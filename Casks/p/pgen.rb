cask "pgen" do
  version "1.17.0"
  sha256 "17ffbd80b00bdc75104bc645e67a21e433745ccbf4b4213d2716efa78b445baa"

  url "https://pgendb.com/download/v#{version}/pgen.dmg"
  name "pgen"
  desc "PostgreSQL client"
  homepage "https://pgendb.com/"

  livecheck do
    url "https://pgendb.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "pgen.app"

  zap trash: [
    "~/Library/Application Support/com.tragen.pgendb",
    "~/Library/Caches/com.tragen.pgendb",
    "~/Library/HTTPStorages/com.tragen.pgendb",
    "~/Library/Preferences/com.tragen.pgendb.plist",
  ]
end
