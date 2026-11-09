cask "es-de" do
  arch arm: "arm64", intel: "x64"

  version "3.5.0"
  sha256 arm:   "060bd289fa17f8f07bac2eb688698047f7be79b80495983f08580b5f1a046e1e",
         intel: "36418337e9f499506ee4fed6f8c880665abfb24eda1fde0b23f224f0ca69cd39"

  url "https://packages.es-de.org/release/#{version}/ES-DE_#{version}-#{arch}.dmg"
  name "ES-DE"
  name "EmulationStation Desktop Edition"
  desc "Frontend for browsing and launching games from your multi-platform collection"
  homepage "https://www.es-de.org/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/18817634/repository/files/latest_release.json/raw?ref=master"
    strategy :json do |json|
      json.dig("stable", "version")
    end
  end

  depends_on :macos

  app "ES-DE.app"

  uninstall quit: version.csv.first.to_s

  zap trash: [
    "~/ES-DE",
    "~/Library/Preferences/org.es-de.frontend.plist",
    "~/Library/Saved Application State/org.es-de.Frontend.savedState",
  ]
end
