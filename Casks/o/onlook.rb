cask "onlook" do
  arch intel: "/intel"
  arch_livecheck = on_arch_conditional arm: "arm64", intel: "x64"

  version "2.0.4"
  sha256 :no_check

  url "https://download.onlook.com/latest#{arch}"
  name "Onlook"
  desc "Open-source visual editor for React apps"
  homepage "https://onlook.com/"

  livecheck do
    url :url
    regex(/.+Onlook-(\d+(?:\.\d+)+)-#{arch_livecheck}\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["content-disposition"]&.match(regex)
      return if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Onlook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.onlook.studio.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.onlook.studio.sfl*",
    "~/Library/Application Support/Onlook Studio",
    "~/Library/Application Support/Onlook",
    "~/Library/Logs/Onlook",
    "~/Library/Preferences/com.onlook.studio.plist",
    "~/Library/Preferences/dev.onlook.studio.plist",
  ]
end
