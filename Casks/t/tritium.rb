cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.54"
  sha256 arm:   "d2286df7cb6780ec97c63828f9333a383bf316c4ace7fcd09680312a90602071",
         intel: "f340f8842354d32f2d20ecc8ab7e407a0f5398a0e942c50bccacfc80ad81422b"

  url "https://tritium.legal/static/releases/tritium-macos-#{arch}.#{version}.zip"
  name "Tritium"
  desc "Integrated drafting environment for legal professionals"
  homepage "https://tritium.legal/"

  livecheck do
    url "https://tritium.legal/version"
    strategy :page_match, &:strip
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tritium.app"

  zap trash: "~/Library/Application Support/com.Tritium-Legal.tritium"
end
