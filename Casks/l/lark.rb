cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.7.11,b6b9b144"
    sha256 "4af93368ba5e51838a6cf40a09ee990e66dbf0f40ae85e77e35a179e00394a62"
  end
  on_intel do
    version "8.7.11,29a0241b"
    sha256 "b8e103e6669d87a30c758a97584a06b80ecda5cba461da7ded7d8f63b569b22f"
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
