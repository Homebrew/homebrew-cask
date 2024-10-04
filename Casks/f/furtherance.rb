cask "furtherance" do
  version "24.10.1"
  sha256 "b31ad0efede1cff606fe5867ad72d1fb3e0a61146b0e28173bac70bd76c8fb2e"

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
