cask "dot" do
  version "2.4.1"
  sha256 "0c856e2dcc1984262dad80efd5414b641f86b6b9bc6affc56d1278a38ce712c5"

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
