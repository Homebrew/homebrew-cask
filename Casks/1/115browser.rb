cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "27.0.3.7"
  sha256 arm:   "90acac8c0b6aad6f9bfcc2e51d81ab949a05ceaff4f8c1c1f31b126ae54218f5",
         intel: "5934fa7d9841b9275f4a8cfb88789419006de9f68269f228e7b7d61163ff983b"

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
  depends_on macos: ">= :high_sierra"

  app "115Browser.app"

  zap trash: [
    "~/Library/Application Support/115Browser",
    "~/Library/Caches/115Browser",
    "~/Library/Caches/org.115Browser.115Browser",
    "~/Library/Preferences/org.115Browser.115Browser.plist",
    "~/Library/Saved Application State/org.115Browser.115Browser.savedState",
  ]
end
