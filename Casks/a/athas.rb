cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "a1db7cf1355534f2f282eb7a69872d2de026f1821f228bcdeaa7a75f2dac3bb2",
         intel: "9c49d2c3e88a4363da1cff3a4ed566ee02f14a7629c8a55ac256b873f030a285"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}.dmg",
      verified: "github.com/athasdev/athas/"
  name "Athas"
  desc "Lightweight code editor"
  homepage "https://athas.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Athas.app"

  zap trash: [
    "~/Library/Application Support/com.code.athas",
    "~/Library/Caches/com.code.athas",
    "~/Library/Logs/com.code.athas",
    "~/Library/Preferences/com.code.athas.plist",
    "~/Library/WebKit/com.code.athas",
  ]
end
