cask "bunch" do
  version "1.2.6,46"
  sha256 "3e63ab86bced3bcb8cadcf5d899d036c29d11caf89e911cc3222a4804e217bff"

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast "https://brettterpstra.com/updates/bunch/appcast.xml"
  name "Bunch"
  homepage "https://brettterpstra.com/projects/bunch/"

  auto_updates true

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
