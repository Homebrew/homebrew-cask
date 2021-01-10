cask "littlesecrets" do
  version "1.9.4"
  sha256 "8281c1f648c038b296a02940126c29032ff387b90a880d63834e303e1b3a5ff7"

  url "https://www.mani.de/download/littlesecrets/LittleSecrets#{version}.dmg"
  name "LittleSecrets"
  homepage "https://www.mani.de/de/littlesecrets/"

  livecheck do
    url "https://www.mani.de/de/littlesecrets/history.html"
    strategy :page_match
    regex(%r{href=.*?/LittleSecrets(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "LittleSecrets.app"
end
