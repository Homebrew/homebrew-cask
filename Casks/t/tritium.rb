cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.33"
  sha256 arm:   "c90614fc532651b4fd0c7af1cf0259c7996e202eb2c4e795dfa3f59a18e4987b",
         intel: "5e5e1114178f72e09fdd22f8880af6cfbd5c4c39d45cd065ef46e44a3217a37d"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
