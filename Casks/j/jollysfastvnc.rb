cask "jollysfastvnc" do
  version "1.66,26010802"
  sha256 "061ab6792ec0574420752a422c123b9325557bd130f65c0ab4acc42c37f8a74d"

  url "https://www.jinx.de/JollysFastVNC_files/JollysFastVNC.#{version.csv.first}.(#{version.csv.second}).11.0.dmg"
  name "JollysFastVNC"
  desc "Control computers fast and securely from anywhere"
  homepage "https://www.jinx.de/JollysFastVNC.html"

  livecheck do
    url "https://www.jinx.de/JollysFastVNC.update.11.0.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

  app "JollysFastVNC.app"

  uninstall quit: "de.jinx.JollysFastVNC"

  zap trash: [
    "~/Library/Caches/de.jinx.JollysFastVNC",
    "~/Library/Logs/JollysFastVNC.log*",
    "~/Library/Preferences/de.jinx.JollysFastVNC.plist",
    "~/Library/Saved Application State/de.jinx.JollysFastVNC.savedState",
  ]
end
