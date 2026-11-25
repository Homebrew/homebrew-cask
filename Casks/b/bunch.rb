cask "bunch" do
  version "1.4.19,188"
  sha256 "8755ef0fe80d3aca8d39c8a0b300a23ba90682c7fa2eb5ade40f11ed5722063c"

  url "https://brettterpstra.com/updates/bunch/Bunch#{version.csv.first}#{version.csv.second}.dmg"
  name "Bunch"
  desc "Automation tool"
  homepage "https://bunchapp.co/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
