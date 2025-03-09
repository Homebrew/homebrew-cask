cask "furtherance" do
  version "25.3.0"
  sha256 "7d04cb84e461dd9c9c2f343702435f1fb11f6d0b76660e986832ef58d025777f"

  url "https://github.com/unobserved-io/Furtherance/releases/download/#{version}/furtherance-#{version}.dmg",
      verified: "github.com/unobserved-io/Furtherance/"
  name "Furtherance"
  desc "Time tracker"
  homepage "https://furtherance.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Furtherance.app"

  zap trash: "~/Library/Application Support/io.unobserved.furtherance"
end
