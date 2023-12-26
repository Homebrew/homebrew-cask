cask "maccy" do
  version "0.29.3"
  sha256 "d6222ff763cb2b58f90562de1769df28a48fb847e1323ebcd0804ef2f0058137"

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
  depends_on macos: ">= :mojave"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
        "~/Library/Preferences/org.p0deje.Maccy.plist",
      ]
end
