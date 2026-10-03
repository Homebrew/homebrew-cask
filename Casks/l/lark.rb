cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "8.1.22,9dd05af0"
    sha256 "4aaa5bdec6f1aac0cd99d47fd294c8ce7a0f236438a0b5853d8ca723eab01ccd"
  end
  on_intel do
    version "8.1.24,0d3ff4df"
    sha256 "657f3956ad06c4fa2da9761c8040f8e5c3f7e3c0ae5f492dd9969c8d5a57a7d9"
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
    "~/Library/Preferences/com.electron.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
