cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "35.2.0.3"
  sha256 arm:   "1a3e5b41cbc591105c602f51ac87379fb2296e3c78068fff8c88744740e73605",
         intel: "a331d0ec2ebc6b14448521daf06d03b2e8e71cd8f7e7d94d4cbe24ab0f6be353"

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
