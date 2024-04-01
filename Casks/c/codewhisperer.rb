cask "codewhisperer" do
  version "0.15.2"
  sha256 "07566bf25d230a2202a3a49d47376c910102d3a9b1db61fc448e3c57302c94fa"

  url "https://desktop-release.codewhisperer.us-east-1.amazonaws.com/#{version}/CodeWhisperer.dmg",
      verified: "desktop-release.codewhisperer.us-east-1.amazonaws.com/"
  name "CodeWhisperer for Command Line"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://aws.amazon.com/codewhisperer/"

  livecheck do
    url "https://desktop-release.codewhisperer.us-east-1.amazonaws.com/index.json"
    strategy :json do |json|
      json["versions"].map { |item| item["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CodeWhisperer.app"

  zap trash: [
    "~/Library/Application Support/codewhisperer",
    "~/Library/Caches/com.amazon.codewhisperer",
    "~/Library/LaunchAgents/com.amazon.codewhisperer.launcher.plist",
    "~/Library/Preferences/com.amazon.codewhisperer.plist",
    "~/Library/WebKit/com.amazon.codewhisperer",
  ]
end
