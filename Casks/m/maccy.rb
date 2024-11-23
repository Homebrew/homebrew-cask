cask "maccy" do
  version "2.2.1"
  sha256 "e7cc78271ad9e499a73f99293d92b5c622d029892ee3bc012e6ddce0c151d1c2"

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip",
      verified: "github.com/p0deje/Maccy/"
  name "Maccy"
  desc "Clipboard manager"
  homepage "https://maccy.app/"

  livecheck do
    url "https://raw.githubusercontent.com/p0deje/Maccy/master/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
        "~/Library/Preferences/org.p0deje.Maccy.plist",
      ]
end
