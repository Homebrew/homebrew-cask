cask "studio-3t" do
  version "2021.3.0"
  sha256 "e4a1f232745aaba140a6f1ff72b81ccf82fff4f05b761671ccb83a6515349ae0"

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
