cask "dot" do
  version "2.0.9"
  sha256 "b4f7832c9107a79277875e02bcaf8505b1ecf848aafb7d46d8e4ebae3e7d59c7"

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
