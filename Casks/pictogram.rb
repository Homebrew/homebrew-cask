cask "pictogram" do
  version "0.1,13"
  sha256 "fb35a21dcc548f0226453701632ebaa478ab8cb68fccfd0ae995cbb5c80d741b"

  url "https://pictogramapp.com/updates/v#{version.csv.first}%20%28Build%20#{version.csv.second}%29.zip"
  name "Pictogram"
  desc "Customize and maintain app icons"
  homepage "https://pictogramapp.com/"

  livecheck do
    url "https://pictogramapp.com/updates/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "Pictogram.app"

  zap trash: [
    "~/Library/Application Support/com.NeilSardesai.Pictogram",
    "~/Library/Preferences/com.NeilSardesai.Pictogram.plist",
  ]
end
