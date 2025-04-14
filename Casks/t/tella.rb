cask "tella" do
  version "1.48.2"
  sha256 "c3a5a38ff928b4d56f7a6c0674e0240d16d2677454c1b97a71830597b2ca75e7"

  url "https://mac.tella.tv/Tella-#{version}.dmg"
  name "Tella"
  desc "Screen recorder"
  homepage "https://www.tella.tv/"

  livecheck do
    url "https://mac.tella.tv/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Tella.app"

  zap trash: [
    "~/Library/Application Scripts/tv.tella.Tella",
    "~/Library/Containers/tv.tella.Tella",
    "~/Library/Preferences/tv.tella.Tella.plist",
  ]
end
