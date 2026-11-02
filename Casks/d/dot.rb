cask "dot" do
  version "2.4.3"
  sha256 "ad7577a6ffdc57e0ae8cf82260dc360f53ec0a4e92393b22490a510218bffa89"

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
