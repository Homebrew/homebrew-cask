cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "f7d242ffb904996c3a9b1c306a0531d05a40011b3eb3bb60b9615c5d5b4e3069",
         intel: "52a045a6112167378c498a24857b5bb7ad2ae3898cd66f0f19535760aaa31a63"

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
