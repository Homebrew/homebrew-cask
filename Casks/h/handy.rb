cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.9"
  sha256 arm:   "66f487096ec225ef6e2c279aa65ff7dfec86fd3ec80877379634546845d350a1",
         intel: "c730d19da22b4093e6b13303caafbfd95f733ff21026ee6884ecdaebc5365777"

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
