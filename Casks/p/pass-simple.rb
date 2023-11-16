cask "pass-simple" do
  version "0.127"
  sha256 "fb8abd5e27db000a425c44ddd3d3e78746dbc08dd41ce6d7080cb6986d728fa6"

  url "https://downloads.sourceforge.net/pass-simple/pass-simple-#{version}-Darwin.dmg"
  name "Pass simple"
  desc "GUI for pass cli util"
  homepage "https://sourceforge.net/projects/pass-simple/"

  livecheck do
    url "https://sourceforge.net/projects/pass-simple/rss?"
    regex(/pass-simple-macos-(\d+(?:\.\d+)+)-Darwin\.dmg/i)
    strategy :page_match
  end

  app "pass-simple.app"

  depends_on macos: ">= :big_sur"
  depends_on formula: "pass"
  depends_on formula: "pinentry-mac"

  zap trash: [
    "~/Library/Caches/Pass simple",
    "~/Library/Preferences/com.shemeshg.PassSimple.plist",
  ]
end
