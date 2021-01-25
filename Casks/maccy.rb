cask "maccy" do
  version "0.19.0"
  sha256 "0d77dbcf6fff792bca30d873d37f0d75dacf7da9c2691c0d60f1e3e0ced0a740"

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip",
      verified: "github.com/p0deje/Maccy/"
  name "Maccy"
  desc "Clipboard manager"
  homepage "https://maccy.app/"

  livecheck do
    url "https://raw.githubusercontent.com/p0deje/Maccy/master/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Preferences/org.p0deje.Maccy.plist",
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
      ]
end
