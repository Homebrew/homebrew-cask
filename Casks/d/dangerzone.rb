cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.9.0"
  sha256 arm:   "0550878e8816f46e7dbc30014bc40b54bec5f0314b35c736d30fa5fe64c059e4",
         intel: "3fcea95d10743ef2ed868aeb6e454eb4de5caa1fb430e6da194648dadbece5ea"

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
