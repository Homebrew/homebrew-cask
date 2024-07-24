cask "bonjeff" do
  version "2.0.1"
  sha256 "def276e47c60d8ffa7922356c6b6c7a90671590d283b48fb46d78a15dbd43772"

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff#{version}.zip"
  name "Bonjeff"
  desc "Shows a live display of the Bonjour services published on your network"
  homepage "https://github.com/lapcat/Bonjeff"

  depends_on macos: ">= :high_sierra"

  app "Bonjeff.app"

  zap trash: [
    "~/Library/Application Scripts/com.lapcatsoftware.bonjeff",
    "~/Library/Containers/com.lapcatsoftware.bonjeff",
  ]
end
