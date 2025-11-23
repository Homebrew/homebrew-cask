cask "jollysfastvnc" do
  version "1.64,22052516"
  sha256 "a8fd7f4691008689cf7aae2e349a364e187b4d989ca675101a9f716c3b9525eb"

  url "https://www.jinx.de/JollysFastVNC_files/JollysFastVNC.#{version.csv.first}.(#{version.csv.second}).11.0.dmg"
  name "JollysFastVNC"
  desc "Control computers fast and securely from anywhere"
  homepage "https://www.jinx.de/JollysFastVNC.html"

  livecheck do
    url "https://www.jinx.de/JollysFastVNC.update.11.0.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "JollysFastVNC.app"

  uninstall quit: "de.jinx.JollysFastVNC"

  zap trash: [
    "~/Library/Caches/de.jinx.JollysFastVNC",
    "~/Library/Logs/JollysFastVNC.log*",
    "~/Library/Preferences/de.jinx.JollysFastVNC.plist",
    "~/Library/Saved Application State/de.jinx.JollysFastVNC.savedState",
  ]
end
