cask "dot" do
  version "2.4.0"
  sha256 "bb87cfb033cc68abb2629bb5f39039397877a18420fa8d474ef27e354396bdef"

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
