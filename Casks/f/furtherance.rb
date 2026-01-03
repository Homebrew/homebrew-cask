cask "furtherance" do
  version "26.1.1"
  sha256 "ba7e029c2b1c672b191a3dd05d63e019e58979ad22e3000637369cd1b94d8827"

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
