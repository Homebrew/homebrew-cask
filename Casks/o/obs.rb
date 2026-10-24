cask "obs" do
  arch arm: "apple", intel: "intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "33.0.0"
  sha256 arm:   "b36f4e9da5f2f17c733ba711c8fe0656d6b0cd573cfe96eeb3e68325cffef739",
         intel: "8524ff428f038573f8905a206841081d3da9ec607063906f7bbfe38d55810c1c"

  url "https://cdn-fastly.obsproject.com/downloads/obs-studio-#{version}-macos-#{arch}.dmg"
  name "OBS"
  desc "Open-source software for live streaming and screen recording"
  homepage "https://obsproject.com/"

  livecheck do
    url "https://obsproject.com/osx_update/updates_#{livecheck_folder}_v2.xml"
    regex(/obs[._-]studio[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        next if item.channel != "stable"

        item.url&.[](regex, 1)
      end
    end
  end

  auto_updates true
  conflicts_with cask: "obs@beta"
  depends_on macos: :ventura

  app "OBS.app"
  command_wrapper "obs",
                  executable: "#{appdir}/OBS.app/Contents/MacOS/OBS"

  uninstall quit:   "com.obsproject.obs-studio",
            delete: "/Library/CoreMediaIO/Plug-Ins/DAL/obs-mac-virtualcam.plugin"

  zap trash: [
    "~/Library/Application Support/obs-studio",
    "~/Library/HTTPStorages/com.obsproject.obs-studio",
    "~/Library/Preferences/com.obsproject.obs-studio.plist",
    "~/Library/Saved Application State/com.obsproject.obs-studio.savedState",
  ]
end
