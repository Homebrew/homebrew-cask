cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.5.1"
  sha256 arm:   "d02230187f9055f13675e0e10464491cc83a238a2a19848cde8717e69c47c8e9",
         intel: "b7359b3c82983e50bcf811054e32ed0b16ea159b1d5d5c3f08a3b20132e7f209"

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
