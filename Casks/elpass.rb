cask "elpass" do
  version "1.4.4,430"
  sha256 "3c5a4e834b8a070941e34f24454e7648a355f2dbe550522a5f6170d0469d9d28"

  url "https://elpass.app/macos/Elpass-#{version.csv.first}-#{version.csv.second}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Elpass.app"
end
