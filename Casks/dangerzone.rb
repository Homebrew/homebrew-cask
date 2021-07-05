cask "dangerzone" do
  version "0.2.1"
  sha256 "689a567b4c21b44c4e098a6efc6b2a8a0110a23ff8f656cf0951ffd82587e83d"

  url "https://github.com/firstlookmedia/dangerzone/releases/download/v#{version}/Dangerzone-#{version}.dmg",
      verified: "github.com/firstlookmedia/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dangerzone.app"
end
