cask "bunch" do
  version "1.2.7,47"
  sha256 "a06769ae48849a0aae040e77381ed4a0b1c928cb82329c0772aa2d85c92a0cd8"

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast "https://brettterpstra.com/updates/bunch/appcast.xml"
  name "Bunch"
  homepage "https://brettterpstra.com/projects/bunch/"

  auto_updates true

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
