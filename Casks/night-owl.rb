cask "night-owl" do
  version "2.92"
  sha256 "f35185d46b11153b26f3dc452cd9432abb45b4c18192718fd20805960252b351"

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
