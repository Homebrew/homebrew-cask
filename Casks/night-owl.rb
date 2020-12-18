cask "night-owl" do
  version "2.92"
  sha256 :no_check

  url "https://aki-null.net/yf/NightOwl.zip",
      verified: "aki-null.net/"
  appcast "https://sites.google.com/site/yorufukurou/distribution/appcast.xml"
  name "NightOwl"
  name "YoruFukurou"
  desc "Twitter client app"
  homepage "https://sites.google.com/site/yorufukurou/home-en"

  depends_on macos: ">= :mojave"

  app "Night Owl.app"
end
