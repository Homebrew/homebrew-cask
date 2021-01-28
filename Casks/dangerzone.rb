cask "dangerzone" do
  version "0.1.4"
  sha256 "cdd035d5f0d48b78c36e7e4df4a7218875213600ce8ae79c0309547c0068b4b1"

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
