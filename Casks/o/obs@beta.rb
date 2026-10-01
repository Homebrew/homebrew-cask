cask "obs@beta" do
  arch arm: "apple", intel: "intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "33.0.0-beta5"
  sha256 arm:   "e7d289a68ee27e0d21900f380fd3d0c2c4c5c48ec0e1661fe6b093258b07eaa5",
         intel: "33b5a80275eaa7331cb39a71d530e63d3937672c62d6c9fb5c48039490b255df"

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
