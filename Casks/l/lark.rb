cask "lark" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_m1"

  on_arm do
    version "7.68.7,6e36fc6e"
    sha256 "05f5c0712287dcb199a714dbdd44b2340cf30fb175939ca71cfb161c0b68e11f"

    depends_on macos: :big_sur
  end
  on_intel do
    version "7.68.7,f13209e8"
    sha256 "2e56d022d78d4204063a50c2200d39e9e34a04658c7358f7639bf1260484f4d8"

    depends_on macos: :catalina
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
  depends_on :macos

  app "LarkSuite.app"

  zap trash: [
    "~/Library/Caches/com.electron.lark",
    "~/Library/Caches/com.electron.lark.helper",
    "~/Library/Preferences/com.electron.lark.helper.plist",
    "~/Library/Saved Application State/com.electron.lark.savedState",
  ]
end
