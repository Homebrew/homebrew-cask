cask "rive" do
  version "0.8.69,56"
  sha256 "3119f98a43afe8ea1d697b8cc018fcc82859e54a94b58a10c17961879ec7ba89"

  url "https://releases.rive.app/macos/#{version.csv.first}/files/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle
  end

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
  ]
end
