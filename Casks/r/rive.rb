cask "rive" do
  version "0.8.3776"
  sha256 "21ca11b1dc26df54be7a23787797af42f0d763d7bf9b8b3a808fc9449d837e03"

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
