cask "paragon-camptune" do
  version :latest
  sha256 :no_check

  url "https://dl.paragon-software.com/demo/camptune_demo_u.dmg"
  name "paragon-camptune"
  desc "Manage disk space on Macs with Boot Camp"
  homepage "https://www.paragon-software.com/home/camptune/"

  app "Paragon CampTune.app"
end
