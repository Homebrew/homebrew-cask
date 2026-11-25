cask "rive" do
  version "0.9.851"
  sha256 "1a747e1e8f6c293334b9e7a8d6352e1ba242a0b1b082fc7f984fff290858493b"

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
