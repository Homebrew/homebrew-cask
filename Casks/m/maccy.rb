cask "maccy" do
  version "2.5.1"
  sha256 "a703220804bed6e12d110bf67b551f97162eba1feaa9825b31ca76655bd90530"

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
