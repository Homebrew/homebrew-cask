cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "6521763204c65d9dcea65a31c5dcdc28c4ebf367e1056218527323f2074aa784",
         intel: "ca542af15e435f6c242a4ce85d55f588a68a2a68d32b315b04551c720bf5b1b3"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg"
  name "pot"
  desc "Cross-platform software for text translation and recognize"
  homepage "https://github.com/pot-app/pot-desktop"

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"

  zap trash: [
    "~/Library/Application Support/com.pot-app.desktop",
    "~/Library/Caches/com.pot-app.desktop",
  ]
end
