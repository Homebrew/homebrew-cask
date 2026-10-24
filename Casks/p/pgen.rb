cask "pgen" do
  version "1.20.0"
  sha256 "883055d3bf784cd7a1ff879ad2bb18236d81e970966ec9bb7391a922c544a32a"

  url "https://pgendb.com/download/v#{version}/pgen.dmg"
  name "pgen"
  desc "PostgreSQL client"
  homepage "https://pgendb.com/"

  livecheck do
    url "https://pgendb.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "pgen.app"

  zap trash: [
    "~/Library/Application Support/com.tragen.pgendb",
    "~/Library/Caches/com.tragen.pgendb",
    "~/Library/HTTPStorages/com.tragen.pgendb",
    "~/Library/Preferences/com.tragen.pgendb.plist",
  ]
end
