cask "dangerzone" do
  version "0.1.5"
  sha256 "73b1ca9ed5d647a0e38de737e8555257daee74676d755b5cdf6d0a29039cc2db"

  url "https://github.com/firstlookmedia/dangerzone/releases/download/v#{version}/Dangerzone.#{version}.dmg",
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
