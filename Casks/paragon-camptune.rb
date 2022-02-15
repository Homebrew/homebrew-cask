cask "paragon-camptune" do
  version "10.17.262"
  sha256 :no_check

  url "https://dl.paragon-software.com/demo/camptune_demo_u.dmg"
  name "Paragon CampTune"
  desc "Manage disk space on Macs with Boot Camp"
  homepage "https://www.paragon-software.com/home/camptune/"

  livecheck do
    url :url
    strategy :extract_plist do |versions|
      versions.values.map(&:short_version).compact.first
    end
  end

  depends_on macos: ">= :sierra"

  app "Paragon CampTune.app"
end
