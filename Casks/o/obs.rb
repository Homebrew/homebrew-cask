cask "obs" do
  arch arm: "apple", intel: "intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "32.2.2"
  sha256 arm:   "920d6f26703d2df6e4085bd3c1cbed30488325084136c7a6e9e37021fbd6aaf7",
         intel: "f8d8afe3dffdc86efa0698c02ff0c997866bac3e6208ddaf56d37108baacf197"

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
