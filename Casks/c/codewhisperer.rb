cask "codewhisperer" do
  version "0.12.0"
  sha256 :no_check

  url "https://desktop-release.codewhisperer.us-east-1.amazonaws.com/latest/CodeWhisperer.dmg", verified: "desktop-release.codewhisperer.us-east-1.amazonaws.com/"
  name "CodeWhisperer for Command Line"
  desc "IDE-style autocomplete for 500+ CLIs. Translate natural language-to-bash"
  homepage "https://docs.aws.amazon.com/codewhisperer/latest/userguide/command-line-getting-started-installing.html"

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
