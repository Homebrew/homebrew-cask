cask "bunch" do
  version "1.4.17,180"
  sha256 "8889757631a7a2fdfc9c81b0acf39459926fa1ce31a89822cb4ca788ca7370db"

  url "https://brettterpstra.com/updates/bunch/Bunch#{version.csv.first}#{version.csv.second}.dmg",
      verified: "brettterpstra.com/updates/bunch/"
  name "Bunch"
  desc "Automation tool"
  homepage "https://bunchapp.co/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end
