cask "rive" do
  version "0.8.69"
  sha256 "3119f98a43afe8ea1d697b8cc018fcc82859e54a94b58a10c17961879ec7ba89"

  url "https://releases.rive.app/macos/#{version}/files/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle
  end

  app "Rive.app"
end
