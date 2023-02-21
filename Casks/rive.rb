cask "rive" do
  version "0.8.98"
  sha256 "d78554dc0e84756dd943812baa19c29c380b6313024a6a33280abf83c1d673eb"

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
