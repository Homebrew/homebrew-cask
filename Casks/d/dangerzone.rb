cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.8.0"
  sha256 arm:   "3881d320b968eb70fd11df6f4c980b50e3366b69a7bba091a66645e0c04393a1",
         intel: "9418451451ee092862f63e6bfb2fda238d3b995890969c57fa9296ec8682427a"

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
