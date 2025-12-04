cask "athas" do
  arch arm: "aarch64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "d5ef703a008827a5ff2b67bc660b75b65305748b52f312dd9b884c4c18031762",
         intel: "bdc4a4a797b8293657f9e5138ddb13f6a94b183fe26f4f8ccebf23bbf16cf470"

  url "https://github.com/athasdev/athas/releases/download/v#{version}/Athas_#{version}_#{arch}_darwin.dmg",
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
