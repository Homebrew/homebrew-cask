cask "rive" do
  version "0.8.5761"
  sha256 "2329f4d6ab23003d1383702f34c243615e30fe119d99bf4be4c953295a327695"

  url "https://releases.rive.app/macos/#{version}/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Caches/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
  ]
end
