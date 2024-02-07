cask "rive" do
  version "0.8.1034"
  sha256 "08985be26b94aa7dcdee75c9472290b83b7dedd28a1bfa93acb2ea4e15d0f04d"

  url "https://releases.rive.app/macos/#{version}/Rive.dmg"
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
