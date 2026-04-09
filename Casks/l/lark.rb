cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "7.65.9,1395b7ea"
    sha256 "54a1dbaa8d21b4310c8eab06a3622259477f9717dd7ba9c4697129a72334abda"

    depends_on macos: ">= :big_sur"
  end
  on_intel do
    version "7.65.9,9505b9d4"
    sha256 "2aa66c69d6c1892bba7d3b5a8491203accb429873d72de445b7f8ec664550786"

    depends_on macos: ">= :catalina"
  end

  url "https://sf16-sg.larksuitecdn.com/obj/lark-version-sg/#{version.csv.second}/Lark-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf16-sg.larksuitecdn.com/obj/lark-version-sg/"
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

  app "LarkSuite.app"

  zap trash: [
    "~/Library/Caches/com.electron.lark",
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
