cask "115browser" do
  arch arm: "arm64", intel: "x64"

  version "26.0.7.2"
  sha256 arm:   "1b7c4101483157f4dd4dbf7194245b4e6e398ef3dbb7e993121accb60874384a",
         intel: "fc7252ec32b59a5a6d568cb7bf183849a1f54d2122b2699fdbda090eff9a3a1f"

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
