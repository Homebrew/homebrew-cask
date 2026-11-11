cask "rive" do
  version "0.9.639"
  sha256 "17b2ac39184fbc39c196f06fc8ef7151bcc8704fcda1b64ebbffb1cbb3f83ea4"

  url "https://releases.rive.app/macos/#{version}/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Application Scripts/NJ3JMFUNS9.app.rive.editor",
    "~/Library/Caches/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
    "~/Library/Group Containers/NJ3JMFUNS9.app.rive.editor",
  ]
end
