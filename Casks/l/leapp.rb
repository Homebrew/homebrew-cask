cask "leapp" do
  arch arm: "-arm64"

  version "0.25.0"
  sha256 arm:   "150e275498b2fea1ff405c6fb13ddef9f1e4a44dc3aba31f26730f1a10965d75",
         intel: "a0f825be207808af0e1a882adc05ea7b4891c8c77334125b250d2b29f1f654d4"

  url "https://asset.noovolari.com/#{version}/Leapp-#{version}#{arch}.dmg",
      verified: "asset.noovolari.com/"
  name "Leapp"
  desc "Cloud credentials manager"
  homepage "https://www.leapp.cloud/"

  livecheck do
    url "https://asset.noovolari.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "Leapp.app"

  zap trash: [
    "~/.Leapp",
    "~/Library/Application Support/Leapp",
    "~/Library/Logs/Leapp",
    "~/Library/Preferences/com.leapp.app.plist",
    "~/Library/Saved Application State/com.leapp.app.savedState",
  ]
end
