cask "obs-backgroundremoval" do
  version "1.3.3"
  sha256 "341d3f81ad49dddd7a200b938688c521ba6960101c0fbd0d21d7f63bf93d0f25"

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
