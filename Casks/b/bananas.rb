cask "bananas" do
  version "0.0.11"
  sha256 "c70ba0b7d2f334d71e2d263f6c60b7d4d537a4b1206331757775af99a5ccc977"

  url "https://github.com/mistweaverco/bananas/releases/download/v#{version}/bananas_universal.dmg",
    verified: "github.com/mistweaverco/bananas/"
  name "bananas"
  desc "Cross-Platform screen sharing made simple"
  homepage "https://getbananas.net"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "bananas.app"
end
