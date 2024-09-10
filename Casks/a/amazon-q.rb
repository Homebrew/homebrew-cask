cask "amazon-q" do
  version "1.4.2"
  sha256 "34e65a4349c3f96802affa6173c347671843fb3a364d26685d9a293c71a3f685"

  url "https://desktop-release.codewhisperer.us-east-1.amazonaws.com/#{version}/Amazon%20Q.dmg",
      verified: "desktop-release.codewhisperer.us-east-1.amazonaws.com/"
  name "Amazon Q"
  desc "AI-powered productivity tool for the command-line"
  homepage "https://aws.amazon.com/q/developer/"

  livecheck do
    url "https://desktop-release.codewhisperer.us-east-1.amazonaws.com/index.json"
    strategy :json do |json|
      json["versions"].map { |item| item["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Amazon Q.app"

  zap trash: [
    "~/Library/Application Support/codewhisperer",
    "~/Library/Caches/com.amazon.codewhisperer",
    "~/Library/LaunchAgents/com.amazon.codewhisperer.launcher.plist",
    "~/Library/Preferences/com.amazon.codewhisperer.plist",
    "~/Library/WebKit/com.amazon.codewhisperer",
  ]
end
