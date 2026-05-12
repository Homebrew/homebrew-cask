cask "mos" do
  version "4.2.0,20260505.1"
  sha256 "4acc001bb57eecb6c06cf707c12e0aafed13160e975a161310aee5542de56024"

  url "https://github.com/Caldis/Mos/releases/download/#{version.csv.first}/Mos.Versions.#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}.zip",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  livecheck do
    url "https://mos.caldis.me/appcast.xml"
    strategy :sparkle
  end

  conflicts_with cask: "mos@beta"
  depends_on :macos

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
