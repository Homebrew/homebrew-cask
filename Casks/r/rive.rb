cask "rive" do
  version "0.8.4375"
  sha256 "68bcd68e9a118fcb7d48af1186a799bcfdedbd103ecc146f3d6c4f07ef575320"

  url "https://releases.rive.app/macos/#{version}/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Caches/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
  ]
end
