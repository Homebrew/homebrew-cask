cask "rive" do
  version "0.8.196"
  sha256 "a5869214d4a55ef9c589b1c6bbae267eee0486d4909194c27e57e68e31b34f8d"

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
