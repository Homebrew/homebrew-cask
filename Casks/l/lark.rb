cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.4.19,363d4914"
    sha256 "d7427a424425ef1e8518cb39af60846d9667fdd718364c13307d9867fa96bc46"
  end
  on_intel do
    version "8.4.19,37e2fd2a"
    sha256 "2fc82e23dc281fc6f7457933c0b0c46035eac6682707b98b9bdc139c5cb5200a"
  end

  url "https://sf16-sg.larksuitecdn.com/obj/lark-version-sg/#{version.csv.second}/Lark-darwin_#{arch}-#{version.csv.first}-signed.dmg"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    regex(%r{/lark-version-sg/(\h+)/Lark[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)[._-]signed\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("versions", "MacOS#{livecheck_arch}", "download_link")&.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on :macos

  app "LarkSuite.app"

  zap trash: [
    "~/Library/Caches/com.electron.lark",
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Caches/com.larksuite.larkApp.helper",
    "~/Library/HTTPStorages/com.larksuite.larkApp.helper",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    "~/Library/Preferences/com.larksuite.larkApp.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
