cask "edrawmind" do
  version "12.0.4,5378"
  sha256 "dd7b44931d20360226a775c6c74614ce35f6a8b68246ba666a87312a9687920a"

  url "https://download.edrawsoft.com/cbs_down/edrawmind_full#{version.csv.second}.zip"
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
