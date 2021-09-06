cask "robofont" do
  version "4.0,2107151446"
  sha256 :no_check

  url "https://static.typemytype.com/robofont/RoboFont.dmg",
      verified: "static.typemytype.com/robofont/"
  name "RoboFont"
  homepage "https://robofont.com/"

  livecheck do
    url "https://doc.robofont.com/appcast.xml"
    strategy :page_match do |page|
      match = page.match(/Version\s(\d+(?:\.\d+)*)\s\(build\s(\d+(?:\.\d+)*)\)/i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "RoboFont.app"
end
