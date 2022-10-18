cask "iconjar" do
  version "2.11.2,50559"
  sha256 "9227fef1cb41620a9434d17a65d510e6a5dec997e868e2819f36f7219725dfa3"

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
