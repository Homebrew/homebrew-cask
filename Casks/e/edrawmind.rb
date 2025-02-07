cask "edrawmind" do
  version "12.2.2,5378"
  sha256 "11f2bfb3f01274077641c577b6d23ffd8d04cc5fceca15d28468903a497f03ef"

  url "https://download.edrawsoft.com/cbs_down/edrawmind_#{version.csv.first}_full#{version.csv.second}.zip"
  name "EdrawMind"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.com/edrawmind/"

  livecheck do
    url "https://www.edrawsoft.com/download-edrawmind.html"
    regex(/for\s+Mac.*?v?(\d+(?:\.\d+)+).*?edrawmind[._-]full(\d+)\./im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "EdrawMind.app"

  zap trash: [
    "~/Library/Preferences/com.edrawsoft.mindmaster.plist",
    "~/Library/Saved Application State/com.edrawsoft.mindmaster.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
