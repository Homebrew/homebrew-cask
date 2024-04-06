cask "obs" do
  arch arm: "Apple", intel: "Intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "30.1.2"
  sha256 arm:   "64f6a93a98ff89f72de721aae2d02092483c168ad2c16230f57e549d10bf1120",
         intel: "d53b85a6142de340bfb0c48bc563b6be0d99ae6b091da43a7ba25020bac6902e"

  url "https://cdn-fastly.obsproject.com/downloads/OBS-Studio-#{version}-macOS-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url "https://obsproject.com/osx_update/updates_#{livecheck_folder}_v2.xml"
    regex(/obs[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
    strategy :sparkle do |items, regex|
      items.find { |item| item.channel == "stable" }&.url&.scan(regex)&.flatten
    end
  end

  auto_updates true
  conflicts_with cask: "obs-beta"
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
