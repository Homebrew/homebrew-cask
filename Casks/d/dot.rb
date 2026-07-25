cask "dot" do
  version "2.3.3"
  sha256 "4ce5fd781b447c33982548aac2a936f40de405b495204f49e605e335211ed475"

  url "https://github.com/prateekkeshari/dot-releases/releases/download/v#{version}/Dot-#{version}.dmg",
      verified: "github.com/prateekkeshari/dot-releases/"
  name "Dot"
  desc "Menu bar calendar with meeting reminders"
  homepage "https://www.trydot.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Dot.app"

  zap trash: [
    "~/Library/Application Scripts/com.dot.app/",
    "~/Library/Caches/com.dot.app/",
    "~/Library/Containers/com.dot.app/",
  ]
end
