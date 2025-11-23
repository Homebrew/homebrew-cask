cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.9.1"
  sha256 arm:   "eabb696e72d53ab8941ce79ce1ed2406e193d482b5e85e95f31c07a46ce55c85",
         intel: "9e0c052d50897a81565be5f24b3f139d0af7fd2d0c1d725df48c9347e95f4a0c"

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

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
