cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.59"
  sha256 arm:   "45b38e20d7259b619aeca7cbd92027926c63a3f10a93b570ff52518b9fb0576a",
         intel: "66719a91b4ce994d6106b25994a6420193c64aab7d72d8ccb4be1dc602ade457"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on :macos

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
