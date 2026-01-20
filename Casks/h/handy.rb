cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "91f9a63d500d7fc14af945a8d8ba6d652e957a9a604dc4f00f56e165dcca631e",
         intel: "2f21c5b93fa436dfa0a1d215a8b90b1e9d8a19d39a1585537e2930e6c3d8eb6f"

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
