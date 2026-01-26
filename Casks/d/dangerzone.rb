cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.10.0"
  sha256 arm:   "20b0b32d30b46c53907b7d8543091c7d31cf02dc8bd1ee1ae67f7469ac001821",
         intel: "6067caa80f2d390684d0fbdd6e00aad36fdf11226de5fe351202e05dada5d318"

  url "https://github.com/freedomofpress/dangerzone/releases/download/v#{version}/Dangerzone-#{version}-#{arch}.dmg",
      verified: "github.com/freedomofpress/dangerzone/"
  name "Dangerzone"
  desc "Convert potentially dangerous PDFs or Office documents into safe PDFs"
  homepage "https://dangerzone.rocks/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Dangerzone.app"

  zap trash: [
    "~/Library/Application Support/dangerzone",
    "~/Library/Saved Application State/press.freedom.dangerzone.savedState",
  ]
end
