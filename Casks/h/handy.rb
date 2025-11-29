cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "83213abf1215939b84786ef0c6749ed9659c3c7ee7e33e8b6d5e452223b37e5a",
         intel: "f38dfd31b2fa1256f071fdc66a38fce1ee6bf91e90fcf2c469da69e16ab4339d"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  depends_on macos: ">= :ventura"

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
