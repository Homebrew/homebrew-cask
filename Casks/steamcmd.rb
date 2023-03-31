cask "steamcmd" do
  version "1679680174"
  sha256 :no_check

  url "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz",
      verified: "steamcdn-a.akamaihd.net/"
  name "SteamCMD"
  homepage "https://developer.valvesoftware.com/wiki/SteamCMD"

  livecheck do
    url "http://media.steampowered.com/client/steam_cmd_osx"
    regex(/"version"\s*"([^"]+)"/)
  end

  auto_updates true

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/steamcmd.wrapper.sh"
  binary shimscript, target: "steamcmd"

  preflight do
    # Running for the first time will create a Frameworks symlink in the parent
    # directory pointing to a MacOS directory, so move the files in a MacOS directory.
    files = staged_path.glob("*")
    macos_dir = staged_path/"MacOS"
    macos_dir.mkpath
    FileUtils.mv files, macos_dir

    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{macos_dir}/steamcmd.sh' "$@"
    EOS
  end

  postflight do
    system_command shimscript, args: ["+quit"]
  end

  uninstall launchctl: "com.valvesoftware.steamclean"
end
