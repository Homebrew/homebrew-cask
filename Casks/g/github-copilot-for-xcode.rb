cask "github-copilot-for-xcode" do
  version "0.45.0"
  sha256 "7a7ccd4656eab2cf7f01f078636c253c98012a3aed5ba00b9c9fff993cb942bd"

  url "https://githubcopilotide.z13.web.core.windows.net/#{version}/GitHubCopilotForXcode.dmg",
      verified: "githubcopilotide.z13.web.core.windows.net/"
  name "GitHub Copilot for Xcode"
  desc "Xcode extension for GitHub Copilot"
  homepage "https://github.com/github/CopilotForXcode"

  livecheck do
    url "https://githubcopilotide.z13.web.core.windows.net/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "GitHub Copilot for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/com.github.CopilotForXcode.EditorExtension",
    "~/Library/Application Scripts/VEKTX9H2N7.group.com.github.CopilotForXcode",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.copilotforxcode.extensionservice.sfl*",
    "~/Library/Application Support/com.github.CopilotForXcode",
    "~/Library/Containers/com.github.CopilotForXcode.EditorExtension",
    "~/Library/Group Containers/VEKTX9H2N7.group.com.github.CopilotForXcode",
    "~/Library/HTTPStorages/com.github.CopilotForXcode",
    "~/Library/Logs/GitHubCopilot",
    "~/Library/Preferences/com.github.CopilotForXcode.plist",
    "~/Library/Preferences/VEKTX9H2N7.group.com.github.CopilotForXcode.prefs.plist",
  ]
end
