cask "obs-backgroundremoval" do
  version "1.3.1"
  sha256 "92d5520c69afa87161f7ff9c9661685778c00ebefcf3950cb215fd69e4625538"

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
