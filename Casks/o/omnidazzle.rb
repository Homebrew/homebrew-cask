cask "omnidazzle" do
  version "1.2"
  sha256 "47dfafb0740eeb164832804bd9ccf898f722057f919cd59197e04f9263f3a175"

  url "https://downloads.omnigroup.com/software/MacOSX/10.6/OmniDazzle-#{version}.dmg"
  name "OmniDazzle"
  desc "Set of plug-ins to highlight areas of your screen and your mouse pointer"
  homepage "https://support.omnigroup.com/omnidazzle-troubleshooting/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "OmniDazzle.app"
end
