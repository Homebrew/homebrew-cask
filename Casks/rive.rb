cask "rive" do
  version "0.8.156"
  sha256 "b3d438afa482a194fd28fb4eb77103784bc4f6410112bd54e739da9ca232b36e"

  url "https://releases.rive.app/macos/#{version}/files/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle, &:short_version
  end

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
  ]
end
