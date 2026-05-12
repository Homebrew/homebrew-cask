cask "handy" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "0cb58c272aefad670dc556370cef72ef3bae5ac35d7fc5135d7c47585a318fcf",
         intel: "5d972b30d711aa59ba7c76a6695e4b183833125fd37c4fe90a14e0f8f7960160"

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.dmg",
      verified: "github.com/cjpais/Handy/"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
  depends_on macos: :ventura

  app "Handy.app"

  zap trash: [
    "~/Library/Application Support/com.pais.handy",
    "~/Library/Caches/com.pais.handy",
    "~/Library/LaunchAgents/Handy.plist",
    "~/Library/WebKit/com.pais.handy",
  ]
end
