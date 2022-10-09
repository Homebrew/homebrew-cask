cask "night-owl" do
  version "2.92"
  sha256 :no_check

  url "https://aki-null.net/yf/NightOwl.zip",
      verified: "aki-null.net/"
  name "NightOwl"
  name "YoruFukurou"
  desc "Twitter client app"
  homepage "https://sites.google.com/site/yorufukurou/home-en"

  livecheck do
    url "https://sites.google.com/site/yorufukurou/distribution/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Night Owl.app"

  zap trash: [
    "~/Library/Application Scripts/com.YoruFukurouProject.YoruFukurou",
    "~/Library/Containers/com.YoruFukurouProject.YoruFukurou",
  ]
end
