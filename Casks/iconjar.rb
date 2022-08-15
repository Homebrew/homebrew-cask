cask "iconjar" do
  version "2.11.0,50391"
  sha256 "f103883f624c49eef19297ec35fa00bc7d907e090712414f8b1f1ecebe456ee2"

  url "https://geticonjar.com/releases/IconJar.app.#{version.csv.second}.zip"
  name "IconJar"
  desc "Icon organizer"
  homepage "https://geticonjar.com/"

  livecheck do
    url "https://geticonjar.com/releases/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "IconJar.app"

  zap trash: [
    "/Users/Shared/IconJar",
    "~/Library/Application Support/IconJar",
    "~/Library/Preferences/com.iconjar.iconjar.plist",
  ]
end
