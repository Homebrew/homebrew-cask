cask "tritium" do
  arch arm: "arm64", intel: "x86"

  version "0.2.64"
  sha256 arm:   "833a23bbcf5c9378426d1218cdd3457b2f364933ebdc613c3023b9d51eaa14da",
         intel: "e2b13ab9dc18af853af1d7bd08fe1892f355f04dc954e4828dee22862128fc6d"

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
