cask "pgen" do
  version "1.11.0"
  sha256 "8d2672f0d7d116a17d280b3e4b77b8df75ac9a56addae52d91cb3d87512fdd88"

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
