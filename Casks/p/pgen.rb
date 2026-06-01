cask "pgen" do
  version "1.13.1"
  sha256 "d9f7d664d37695d8bc6c86711475a9415c671c88ff70bb4918fb3b0e44b52503"

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
