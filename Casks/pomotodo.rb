cask "pomotodo" do
  version "3.4.2,1508736942"
  sha256 "7726496a48eeb2901c9762de2a2df743b2010e7ad0b6ccd2cab5a4f49a496f93"

  url "https://cdn.hackplan.com/theair/#{version.csv.second}/Pomotodo.#{version.csv.first}.dmg",
      verified: "cdn.hackplan.com/theair/"
  name "Pomododo"
  desc "Time management app for creators"
  homepage "https://pomotodo.com/"

  livecheck do
    url "https://air.pomotodo.com/v1/p/com.pomotodo.PomotodoMac#{version.major}/latest.xml"
    strategy :sparkle do |item|
      match = item.url.match(%r{/(\d+)/Pomotodo\.(\d+(?:\.\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "Pomotodo.app"

  zap trash: [
    "~/Library/Application Scripts/com.pomotodo.PomotodoMacHelper",
    "~/Library/Caches/com.pomotodo.PomotodoMac",
    "~/Library/Containers/com.pomotodo.PomotodoMacHelper",
    "~/Library/Cookies/com.pomotodo.PomotodoMac.binarycookies",
    "~/Library/Preferences/com.pomotodo.PomotodoMac.plist",
    "~/Library/WebKit/com.pomotodo.PomotodoMac",
  ]
end
