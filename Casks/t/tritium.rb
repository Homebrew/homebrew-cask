cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.28"
  sha256 arm:   "032957c2c3f3dce482afffedfd9253428c01f75d493e477d04854a578f073452",
         intel: "5075579edb7ace9f8f56a98f1170bb244b84d871b2a6a73349c974d56933cc80"

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
