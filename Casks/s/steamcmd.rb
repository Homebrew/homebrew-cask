cask "steamcmd" do
  version "1782532820"
  sha256 :no_check

  url "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz",
      verified: "steamcdn-a.akamaihd.net/"
  name "SteamCMD"
  desc "Command-line client for Steam"
  homepage "https://developer.valvesoftware.com/wiki/SteamCMD"

  livecheck do
    url "https://media.steampowered.com/client/steam_cmd_osx"
    regex(/"version"\s*"([^"]+)"/i)
  end

  auto_updates true
  depends_on :macos

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  command_wrapper "steamcmd.wrapper.sh", target: "steamcmd", content: <<~SH
    #!/bin/sh
    exec '#{staged_path}/MacOS/steamcmd.sh' "$@"
  SH

  preflight_steps do
    # Running for the first time will create a Frameworks symlink in the parent
    # directory pointing to a MacOS directory, so move the files in a MacOS directory.
    move_contents ".", "MacOS"
  end

  uninstall launchctl: "com.valvesoftware.steamclean"

  zap trash: "~/Library/Application Support/Steam/logs/stderr.txt",
      rmdir: [
        "~/Library/Application Support/Steam",
        "~/Library/Application Support/Steam/logs",
      ]
end
