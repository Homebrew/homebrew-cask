cask "obsbot-center" do
  version "2.0.10.37,31fab900"
  sha256 "18a297580388d9c13460574c3eaa3a395af03f2a6478b2cdca0197af6b63a987"

  url "https://resource-cdn.obsbothk.com/download/obsbot-center/obsbot_center_oa_e_mac_os_#{version.csv.first.dots_to_underscores}_release_#{version.csv.second}.dmg",
      verified: "resource-cdn.obsbothk.com/download/obsbot-center/"
  name "OBSBOT Center"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url "https://www.obsbot.com/download/obsbot-tiny-series"
    regex(/href=.*?obsbot[._-]center[._-]oa[._-]e[._-]mac[._-]os[._-]v?(\d+(?:[._]\d+)+)[._-]release[._-](\h+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1].tr("_", ".")},#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "OBSBOT_Center.app"

  zap trash: [
    "~/Library/Application Support/OBSBOT_Center",
    "~/Library/Caches/com.obsbot.OBSBOT_Center",
    "~/Library/HTTPStorages/com.obsbot.OBSBOT_Center",
    "~/Library/Preferences/com.obsbot.OBSBOT_Center.plist",
  ]

  caveats do
    requires_rosetta
  end
end
