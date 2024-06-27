cask "lark" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.20.9,98091678"
    sha256 "13fb74976e9b1dc0ec816256ab05f04c74640759600cedc929b84bf2333b407e"
  end
  on_intel do
    version "7.20.9,f946e0b6"
    sha256 "e8e07bda78ab57244fff01b5ed915a58800fe144d06b444b912c81cf004d925d"
  end

  url "https://sf16-va.larksuitecdn.com/obj/lark-artifact-storage/#{version.csv.second}/Lark-darwin_#{arch}-#{version.csv.first}-signed.dmg",
      verified: "sf16-va.larksuitecdn.com/obj/lark-artifact-storage/"
  name "Lark"
  desc "Project management software"
  homepage "https://www.larksuite.com/"

  livecheck do
    url "https://www.larksuite.com/api/downloads"
    regex(%r{/lark-artifact-storage/(\h+)/Lark-darwin_#{arch}[._-]v?(\d+(?:\.\d+)+)-signed\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
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
