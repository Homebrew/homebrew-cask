cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "478e175c8dd4dd81310b65e45fecf27d71ae69389235fa0768af7eb1e0865ef6",
         intel: "f224352d052c248547042ab410751cbd85fbc2faf795ccae83f672f83636d498"

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
