cask "baibolintsika-yachad" do
  version "8.2.0"
  sha256 "9212b81383c230c15d463e23252fb4729d85a47eec8f2ebd927e8628842f11f4"

  url "https://github.com/triompherivo/homebrew-yachad/releases/download/v#{version}/Baibolintsika-Yachad-#{version}-universal.dmg"
  name "Baibolintsika Yachad"
  desc "Bible study application"
  homepage "https://github.com/triompherivo/homebrew-yachad"

  depends_on macos: :monterey

  app "Baibolintsika Yachad.app"

  zap trash: [
    "~/Library/Application Scripts/mg.triumphware.baibolintsika.desktop",
    "~/Library/Containers/mg.triumphware.baibolintsika.desktop",
  ]
end
