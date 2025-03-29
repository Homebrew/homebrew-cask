cask "obsbot-center" do
  version "2.0.11.22"
  sha256 "6f75df4757caef4b74931b84aadae314751252a90e6907dedc6afffde8c094ea"

  url "https://resource-cdn.obsbothk.com/202503282046/0accb7b41b8b76df960bc8b028f2a9b5/download/obsbot-center/obsbot_center_oa_e_mac_os_2_0_11_22_release_3e32fa92.dmg",
      verified: "resource-cdn.obsbothk.com/download/obsbot-center/"
  name "OBSBOT Center"
  desc "Configuration and firmware update utility for OBSBOT Tiny and Meet series"
  homepage "https://www.obsbot.com/download"

  livecheck do
    url "https://www.obsbot.com/download/obsbot-tiny-series"
    regex(/href=.*?Obsbot[._-]Center[._-]OA[._-]E[._-]MacOS[._-]v?(\d+(?:\.\d+)+)[._-]release\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
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
