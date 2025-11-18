cask "dfcfqh" do
  version "1.15.0"
  sha256 "d98940c48a864574490c36f03f40da5640e5c26b0d9a91799f387cd613b25676"

  url "https://q1s.dfcfw.com/pcMac/#{version}/dfcfqh_#{version}.dmg",
      verified: "q1s.dfcfw.com/pcMac/"
  name "dfcfqh"
  name "东方财富期货"
  desc "Eastmoney Futures Client"
  homepage "https://qhweb.eastmoney.com/"

  livecheck do
    url "https://qhclicfg.eastmoney.com/commonConfig/api/updateconfig/statusJsonMac"
    strategy :json do |json|
      json.dig("officialVersion", "versionNum")
    end
  end

  depends_on macos: ">= :catalina"

  app "东方财富期货.app"

  zap trash: [
    "~/Library/Application Scripts/com.emfutures.mac",
    "~/Library/Containers/com.emfutures.mac",
  ]

  caveats do
    requires_rosetta
  end
end
