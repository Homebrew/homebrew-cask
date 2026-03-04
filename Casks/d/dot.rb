cask "dot" do
  version "2.1.1"
  sha256 "36f78239aadf728f001116a1e6d9281ccd0df75a9f730de0641b327b35c97992"

  url "https://github.com/prateekkeshari/dot-releases/releases/download/v#{version}/Dot-#{version}.dmg",
      verified: "github.com/prateekkeshari/dot-releases/"
  name "Dot"
  desc "Menu bar calendar with meeting reminders"
  homepage "https://www.trydot.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Dot.app"

  zap trash: [
    "~/Library/Application Scripts/com.dot.app/",
    "~/Library/Caches/com.dot.app/",
    "~/Library/Containers/com.dot.app/",
  ]
end
