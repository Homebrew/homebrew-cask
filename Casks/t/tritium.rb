cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.68"
  sha256 arm:   "9d284b121a0391dd7a50af94b816703cd4b6217c15e31bbdc1d099b034cc2c79",
         intel: "5e84687b8911581b51af3c895227d0a68e49880da1004d822cd2ab0da58e7f6f"

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
