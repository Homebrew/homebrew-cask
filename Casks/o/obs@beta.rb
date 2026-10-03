cask "obs@beta" do
  arch arm: "apple", intel: "intel"
  livecheck_folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "33.0.0-beta6"
  sha256 arm:   "06fe6deaf96645f88593dbc2085c2195714584df3989f4c1aba1a3bfe0be4c40",
         intel: "80351ba0c886ab8d7c0f32ab782fadf335e5c644c8483f43ced994756cfda3c9"

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
