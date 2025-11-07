cask "pot" do
  arch arm: "aarch64", intel: "x64"

  version "3.0.7"
  sha256 arm:   "b3561a92ab5bf338291c25b42bf2eb30bf4b013be379d78ffb275edbb899b0a9",
         intel: "9ce47c9488126d3bdffbb0ec66c2979f4b9d759eb60078127cb294fd6fd07024"

  url "https://github.com/pot-app/pot-desktop/releases/download/#{version}/pot_#{version}_#{arch}.dmg",
      verified: "github.com/pot-app/pot-desktop/"
  name "Pot"
  desc "Software for text translation and recognition"
  homepage "https://pot-app.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "pot.app"
  binary "#{appdir}/pot.app/Contents/MacOS/pot"

  zap trash: [
    "~/Library/Application Support/com.pot-app.desktop",
    "~/Library/Caches/com.pot-app.desktop",
  ]
end
