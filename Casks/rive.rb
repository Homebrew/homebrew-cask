cask "rive" do
  version "0.8.93,80"
  sha256 "796bbc9b3f34f3785e862b2cb16ad876a76b8db559a1f3001fe7ba6f54356975"

  url "https://releases.rive.app/macos/#{version.csv.first}/files/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  livecheck do
    url "https://releases.rive.app/release.xml"
    strategy :sparkle
  end

  app "Rive.app"

  zap trash: [
    "~/Library/Application Scripts/app.rive.editor",
    "~/Library/Containers/app.rive.editor",
  ]
end
