cask "geektool" do
  version "3.4-11,0097512"
  sha256 "724fa310891f7fdaa0207dce4abddca9a7044153709d49e0b4faccb0e958cf6a"

  url "https://s3.tynsoe.org/geektool/GeekTool.app-v#{version.csv.first}-g#{version.csv.second}.zip",
      verified: "dl.devmate.com/org.tynsoe.GeekTool/"
  name "GeekTool"
  desc "Desktop customization tool"
  homepage "https://www.tynsoe.org/geektool/"

  livecheck do
    url :homepage
    regex(%r{/GeekTool\.app-v?(\d+(?:[.-]\d+)+)-g(\h+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :big_sur

  app "GeekTool.app"

  zap trash: [
    "~/Library/Preferences/org.tynsoe.geeklet.file.plist",
    "~/Library/Preferences/org.tynsoe.geeklet.image.plist",
    "~/Library/Preferences/org.tynsoe.geeklet.shell.plist",
    "~/Library/Preferences/org.tynsoe.GeekTool.plist",
    "~/Library/Preferences/org.tynsoe.geektool3.plist",
  ]
end
