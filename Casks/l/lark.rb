cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.3.14,bca1e6e3"
    sha256 "4a6ee770406f323d1a9250d9a1c84352c159ce37dd342856c6605327e3525aa6"
  end
  on_intel do
    version "8.3.14,dbad7f44"
    sha256 "525721da8254b3ce7dd40a75c9e07ed299f69f40705a39103bc50f27bb5609ce"
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
