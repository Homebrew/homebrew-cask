cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.5"
  sha256 arm:   "6e89fba8965733494bade724c45e9584e3dbaa4b5fd6c326cf4f0bb96cb6f2fc",
         intel: "dfbb56882dd0f0046a7eba3982c092ff91c52b9c326a9bf4252875297862e56d"

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
