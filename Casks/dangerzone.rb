cask "dangerzone" do
  version "0.3.2"
  sha256 "95fa7bc2feff03715d33b84fd5a51d0271ffb07902ee616de0106513e4a411d8"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}.dmg",
      verified: "github.com/freedomofpress/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dangerzone.app"
end
