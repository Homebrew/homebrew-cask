cask "poi" do
  arch arm: "-arm64", intel: ""

  version "10.9.1"

  on_intel do
    sha256 "5eff9c247998274c8aff80cec4935794c9080ea1d31a90d26d12d2284cd35dfb"
  end
  on_arm do
    sha256 "80dab844d0f974f5aed73f964fcaf8a4e9d7874068afe09aab7fd96363cb2131"
  end

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}#{arch}.dmg",
      verified: "github.com/poooi/poi/"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.moe/"

  depends_on macos: ">= :high_sierra"

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi/",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
