cask "rive" do
  version "0.8.766"
  sha256 "409eb5c14286354c7ade44428bca6d3b1b3d8448db6be4979ceb5863900674b8"

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
