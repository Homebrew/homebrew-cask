cask "rive" do
  version "0.8.2307"
  sha256 "c3f78bd6b38b5d84b924b80d39286d079ce0dc572a16c4e2aba272db9de1911b"

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
