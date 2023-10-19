cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.5.0"
  sha256 arm:   "fd23862777e4ae1908fa24d076cd090f838b2e06346527df981d15c8a65bba2c",
         intel: "b44aed57ec42aa5a33e6a4580cade33ed4c1ba2019d4c761929b3b329781ccfb"

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
