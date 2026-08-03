cask "dot" do
  version "2.3.4"
  sha256 "f969a9714f051b659f52de42d4cb6b8cf9a7bac016f75d1108866972e718e047"

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
    "~/Library/Application Scripts/com.dot.app",
    "~/Library/Caches/com.dot.app",
    "~/Library/Containers/com.dot.app",
  ]
end
