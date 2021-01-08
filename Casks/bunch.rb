cask "bunch" do
  version "1.3.0,51"
  sha256 "d8ab5bda171d5cceaff6b80336b9fe8c708fca68d779075c4ad6f7235dfecb1c"

  url "https://cdn3.brettterpstra.com/updates/bunch/Bunch#{version.before_comma}#{version.after_comma}.dmg"
  name "Bunch"
  homepage "https://brettterpstra.com/projects/bunch/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
