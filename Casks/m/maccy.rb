cask "maccy" do
  version "2.8.0"
  sha256 "e684e1ce0c60d7cffd3a2b182dc37bd7e88c29967a64a431a2c71be65b1d27e0"

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  name "Maccy"
  desc "Clipboard manager"
  homepage "https://maccy.app/"

  livecheck do
    url "https://raw.githubusercontent.com/p0deje/Maccy/master/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Maccy.app"

  uninstall quit: "org.p0deje.Maccy"

  zap login_item: "Maccy",
      trash:      [
        "~/Library/Application Scripts/org.p0deje.Maccy",
        "~/Library/Containers/org.p0deje.Maccy",
        "~/Library/Preferences/org.p0deje.Maccy.plist",
      ]
end
