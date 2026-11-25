cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.65"
  sha256 arm:   "8ea34674484327ee5cae3d5ffc484df7b43e40eef74e3fac73e07aec12206bfa",
         intel: "f64bfb3afc15c26cee44d32c590f7387df5fc51682b066a4773e42554cfe5e4f"

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
