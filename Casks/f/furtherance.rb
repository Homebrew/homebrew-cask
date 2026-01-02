cask "furtherance" do
  version "26.1.0"
  sha256 "dd3b073540161cf8a3f4dd4fb2876e97ad6df0ba2b3724b129ac51545b7725b9"

  url "https://github.com/unobserved-io/Furtherance/releases/download/#{version}/furtherance-#{version}.dmg",
      verified: "github.com/unobserved-io/Furtherance/"
  name "Furtherance"
  desc "Time tracker"
  homepage "https://furtherance.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Furtherance.app"

  zap trash: "~/Library/Application Support/io.unobserved.furtherance"
end
