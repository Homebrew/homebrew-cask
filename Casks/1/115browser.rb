cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.27.0"
  sha256 arm:   "4406068fca0aed8eb2ae2fb1da1926ec267d32c6d611959e0ab1d7b6c64e778f",
         intel: "611960192cc67f416e60ba3d9c723ae58d83c7151d4bccab7d488799a4d7c208"

  url "https://down.115.com/client/mac/115br_v#{version}_#{arch}.dmg"
  name "115Browser"
  name "115浏览器"
  desc "Web browser"
  homepage "https://pc.115.com/browser.html#mac"

  livecheck do
    url "https://appversion.115.com/1/web/1.0/api/chrome"
    strategy :json do |json|
      json.dig("data", "mac", "version_code")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
