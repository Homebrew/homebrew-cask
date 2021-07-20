cask "studio-3t" do
  version "2021.4.1"
  sha256 "37617fc9a1c4357ba5d30b2cc13b9ab00b2c83db04e22dd0b309b6f6fcd267cb"

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
