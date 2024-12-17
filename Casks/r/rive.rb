cask "rive" do
  version "0.8.2306"
  sha256 "f6fde63f69a6ff4ca9da69b9e3dfa7fe7e769882384ba48fa4d4dc6901bf3c9d"

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
