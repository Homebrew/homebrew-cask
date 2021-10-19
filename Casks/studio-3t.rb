cask "studio-3t" do
  version "2021.8.0"
  sha256 "3325ac678a6171e279bdba62655df89b5085f55f8be8730766954194b82db5fa"

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
