cask "lark" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.24.5,61070088"
    sha256 "e037383f2dd1f5371c3cbf0f2ed60d7632c037086c6cde51ffc1a277de395ac1"
  end
  on_intel do
    version "7.24.5,4711b6fd"
    sha256 "c92399718fc8bd5ec69304e714e84b3d3022616a9c92db894801a729c7d575b9"
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
