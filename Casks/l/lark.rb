cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.6.18,6abb37f8"
    sha256 "a349dd99ee9c522269ea2046c0a9cbc67c8da6fa10649aaea17821df1f61394f"
  end
  on_intel do
    version "8.6.18,2dd21036"
    sha256 "1b4f1531c8582c4a3e5f5d87f250b5d1334afc33265681de55d5fbf3effd6ac1"
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
