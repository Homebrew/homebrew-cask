cask "rive" do
  version "0.8.3006"
  sha256 "8b4b745ee773a16dd00604b0842d3824ac80ea5bde4494d45a3f84fe9c06e812"

  url "https://releases.rive.app/macos/#{version}/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Caches/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
  ]
end
