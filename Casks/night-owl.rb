cask "night-owl" do
  version "2.92"
  sha256 :no_check

  # aki-null.net/ was verified as official when first introduced to the cask
  url "https://aki-null.net/yf/NightOwl.zip"
  appcast "https://sites.google.com/site/yorufukurou/distribution/appcast.xml"
  name "NightOwl"
  name "YoruFukurou"
  desc "Twitter client app"
  homepage "https://sites.google.com/site/yorufukurou/home-en"

  depends_on macos: ">= :mojave"

  app "Night Owl.app"
end
