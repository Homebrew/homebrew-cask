cask "obs-backgroundremoval" do
  version "1.3.2"
  sha256 "625c5f4df65760cc68ba0c8f6e0be68704f769d251339789fa4e800dc4071a24"

  url "https://github.com/occ-ai/obs-backgroundremoval/releases/download/#{version}/obs-backgroundremoval-#{version}-macos-universal.pkg",
      verified: "github.com/occ-ai/obs-backgroundremoval/"
  name "OBS Background Removal"
  desc "Virtual Green-screen and Low-Light Enhancement OBS Plugin"
  homepage "https://obsproject.com/forum/resources/background-removal-virtual-green-screen-low-light-enhance.1260"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  pkg "obs-backgroundremoval-#{version}-macos-universal.pkg"

  uninstall pkgutil: "com.royshilkrot.obs-backgroundremoval",
            delete:  "~/Library/Application Support/obs-studio/plugins/obs-backgroundremoval.plugin",
            rmdir:   "~/Library/Application Support/obs-studio/plugins"

  # No zap stanza required
end
