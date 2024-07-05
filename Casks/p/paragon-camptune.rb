cask "paragon-camptune" do
  version "11.1.26"
  sha256 :no_check

  url "https://dl.paragon-software.com/demo/camptune_demo_11.dmg"
  name "Paragon CampTune"
  desc "Manage disk space on Macs with Boot Camp"
  homepage "https://www.paragon-software.com/home/camptune/"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.filter_map(&:short_version).first
    end
  end

  depends_on macos: ">= :sierra"
  depends_on arch: :x86_64

  app "Paragon CampTune.app"

  uninstall delete: [
              "/Library/Application Support/Paragon Software/com.paragon-software.camptunex.helper",
              "/Library/Application Support/Paragon Software/com.paragon-software.camptunex.helper-data",
              "/Library/Application Support/Paragon Software/uc.camptunex",
            ],
            rmdir:  "/Library/Application Support/Paragon Software/"

  zap trash: [
    "~/Library/Application Support/com.paragon-software.camptunex",
    "~/Library/HTTPStorages/com.paragon-software.camptunex",
    "~/Library/Preferences/com.paragon-software.camptunex.plist",
    "~/Library/Saved Application State/com.paragon-software.camptunex.savedState",
  ]
end
