cask "obs@beta" do
  arch arm: "apple", intel: "intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "31.1.0-rc1"
  sha256 arm:   "00ba96fbeb849a9a5be68fac075ccf7b7dc5b8c3e57842173ca67b488387f111",
         intel: "35e4540e533e2b56c320a81add18a4a1cac5b52da9df79499e7d0a4e5fba8ed7"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/forum/list/test-builds.20/"

  livecheck do
    url "https://obsproject.com/osx_update/updates_#{livecheck_folder}_v2.xml"
    regex(/obs[._-]studio[._-](\d+(?:[.-]\d+)+(?:(?:-beta)|(?:-rc))\d+)[._-]macos/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        next if item.channel != "beta"

        item.url&.[](regex, 1)
      end
    end
  end

  auto_updates true
  conflicts_with cask: "obs"
  depends_on macos: ">= :big_sur"

  app "OBS.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/obs.wrapper.sh"
  binary shimscript, target: "obs"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/OBS.app/Contents/MacOS/OBS' "$@"
    EOS
  end

  uninstall delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
