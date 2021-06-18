cask "studio-3t" do
  version "2021.3.1"
  sha256 "78821b784ae3608aac491b3e7e9570cb68277f44bd1876e0b1d0442c1d56832d"

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
