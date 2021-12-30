cask "dangerzone" do
  version "0.3.1"
  sha256 "a97719233316006ce2e2981f24f193b61510a2c958e4f67769bfc136d459a508"

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
