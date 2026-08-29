cask "pgen" do
  version "1.19.0"
  sha256 "aec4233a016b46bcfbb55f2e6c8e4cee436254143dcaae85bf3fd7bfee67514a"

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
