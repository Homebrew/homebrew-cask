cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.63"
  sha256 arm:   "d562be1f91097a6f6686035be2efd3be56fb3c2a6cd6055bf12910795b4bd962",
         intel: "d26fe7fb96d2eb005621578cd3a1512033aa8c5a23eaac6a206be1e6f14571c0"

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
