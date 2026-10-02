cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.61"
  sha256 arm:   "15958aff33fd48a00df19e3e63066c72f34d2cb90ac6bd7147412b1d2db38cbf",
         intel: "eab0426597ecfde61ec8bf7d2e6d19c153930c682ae1a04fd6ffa1ccdc73b862"

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
