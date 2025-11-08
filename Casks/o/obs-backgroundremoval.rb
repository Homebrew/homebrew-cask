cask "obs-backgroundremoval" do
  version "1.3.0"
  sha256 "3eac75f3944f0fefc10fea28e9ce75ff16a32966abf2d81f354a78a04cb427f7"

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
