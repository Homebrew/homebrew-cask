cask "dot" do
  version "2.4.2"
  sha256 "635d28d7ca1eee9f5aba644ad4d3a14556f60d098625770af38276e5bd182bc9"

  url "https://github.com/prateekkeshari/dot-releases/releases/download/v#{version}/Dot-#{version}.dmg"
  name "Dot"
  desc "Menu bar calendar with meeting reminders"
  homepage "https://www.trydot.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Dot.app"

  uninstall quit: "com.dot.app"

  zap trash: [
    "~/Library/Application Scripts/com.dot.app",
    "~/Library/Caches/com.dot.app",
    "~/Library/Containers/com.dot.app",
  ]
end
