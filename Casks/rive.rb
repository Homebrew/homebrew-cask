cask "rive" do
  version "0.8.206"
  sha256 "3cfa2d77389bb3b1871d9ef051a92c44e9e5fa8d56756298b86bdf705464329b"

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
