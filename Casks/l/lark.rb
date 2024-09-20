cask "lark" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "7.26.8,3853ea5e"
    sha256 "c3cd0c469f8d258713bd6608e4b633cce4729aba43864a934ac6d81e510fdeac"
  end
  on_intel do
    version "7.26.8,eb4944e0"
    sha256 "90b2f71378a3d2498e6d3c9bb85e5cf2ba7163407ff2122926696a85a93a81e2"
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
