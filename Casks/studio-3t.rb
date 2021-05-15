cask "studio-3t" do
  version "2021.2.0"
  sha256 "97d6d33aa0d07878f211f71443ab3b1bdc9e79144655cf555d1a6d2cfd4e5016"

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  name "Studio 3T"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true

  app "Studio 3T.app"
end
