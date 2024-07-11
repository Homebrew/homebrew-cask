cask "geektool" do
  version "3.3.1,331.014,1470733752"
  sha256 "73cbb2361601048c7f4d05a6717e53e83b088d49ac75309b2f8e4dccc17df63c"

  url "https://dl.devmate.com/org.tynsoe.GeekTool/#{version.csv.second}/#{version.csv.third}/GeekTool-#{version.csv.second}.zip",
      verified: "dl.devmate.com/org.tynsoe.GeekTool/"
  name "GeekTool"
  desc "Desktop customization tool"
  homepage "https://www.tynsoe.org/geektool/"

  livecheck do
    url "https://updates.devmate.com/org.tynsoe.GeekTool.xml"
    regex(%r{/(\d+)/GeekTool\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "GeekTool.app"

  zap trash: [
    "~/Library/Preferences/org.tynsoe.geeklet.file.plist",
    "~/Library/Preferences/org.tynsoe.geeklet.image.plist",
    "~/Library/Preferences/org.tynsoe.geeklet.shell.plist",
    "~/Library/Preferences/org.tynsoe.GeekTool.plist",
    "~/Library/Preferences/org.tynsoe.geektool3.plist",
  ]

  caveats do
    requires_rosetta
  end
end
