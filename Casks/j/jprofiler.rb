cask "jprofiler" do
  version "16.0"
  sha256 "854c3f5dc03cf642cde4e857c5749900f33430477129b017a0ded5b86ef89cc2"

  url "https://download-gcdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  name "JProfiler"
  desc "Java profiler"
  homepage "https://www.ej-technologies.com/jprofiler"

  livecheck do
    url "https://www.ej-technologies.com/feeds/jprofiler"
    regex(/JProfiler\s*Release\s*v?(\d+(?:\.\d+)+)/i)
    strategy :xml do |xml, regex|
      xml.get_elements("//title").map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "JProfiler.app"

  zap trash: [
    "~/.jprofiler*",
    "~/Library/Preferences/com.jprofiler.history.plist",
    "~/Library/Preferences/com.jprofiler.v*.plist",
    "~/Library/Preferences/jprofiler.vmoptions",
  ]
end
