cask "dangerzone" do
  version "0.3"
  sha256 "20b5e90d231e694aec009f7ded57dbc95c378f394a25cb9153296636bd5fc10c"

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
