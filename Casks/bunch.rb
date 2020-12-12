cask "bunch" do
  version "1.2.8,48"
  sha256 "88bfb768ac81f894b7c38535c6848fc8fa1078b2a8623ee65b3582745a153c0d"

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  appcast "https://brettterpstra.com/updates/bunch/appcast.xml"
  name "Bunch"
  homepage "https://brettterpstra.com/projects/bunch/"

  auto_updates true

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
