cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.6.1"
  sha256 arm:   "6df4b04e3069497d24a361c54e52d447e8c80f961ab8945ddf20c8c0cef7d744",
         intel: "f694e6799b299dd18bf3462b7ac57fb5f6f357e10dc0c770a8fbaf6207d6fef8"

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
