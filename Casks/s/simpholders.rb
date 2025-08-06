cask "simpholders" do
  version "3.0.12,2366"
  sha256 "0f74633bd6bd9723063af0be550364882b93fbb5cd67bac6e2066083174e5f0d"

  url "https://simpholders.com/site/assets/files/#{version.csv.second}/simpholders_#{version.csv.first.dots_to_underscores}.dmg"
  name "SimPholders"
  desc "Access utility for iPhone Simulator apps"
  homepage "https://simpholders.com/"

  livecheck do
    url "https://simpholders.com/releases/"
    regex(%r{/(\d+)/simpholders[._-](\d+(?:[._]\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map { |match| "#{match[1].tr("_", ".")},#{match[0]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "simpholders_#{version.csv.first.dots_to_underscores}.app", target: "SimPholders.app"

  zap trash: [
    "~/Library/Application Support/SimPholders",
    "~/Library/Caches/com.kf-interactive.simpholders.SimPholders",
    "~/Library/HTTPStorages/com.kf-interactive.simpholders.SimPholders",
    "~/Library/HTTPStorages/com.kf-interactive.simpholders.SimPholders.binarycookies",
    "~/Library/Preferences/com.kf-interactive.simpholders.SimPholders.plist",
  ]
end
