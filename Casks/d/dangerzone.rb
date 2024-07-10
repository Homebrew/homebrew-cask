cask "dangerzone" do
  arch arm: "arm64", intel: "i686"

  version "0.7.0"
  sha256 arm:   "b8ba4b829fd707f92bb6e21c17d7c4abb530134d44a29c4aa1affe149fa4fec2",
         intel: "9ae140831f1832d51590198dda3aadcacb8ab8381ed9c21c919eefa1feff500c"

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
