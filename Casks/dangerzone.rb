cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.4.1"
  sha256 arm:   "ecaa65f030cdf2ecdd422c134b4c5951249dbd85d8a7bcce33ec45838f7fff49",
         intel: "7fc652c81efd45318e6b07372c6c075c345a55730e0b8b4b30cd8ace8a5fe0a1"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg",
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
