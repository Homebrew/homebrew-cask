cask "rive" do
  version "0.8.2154"
  sha256 "7b656c8c39b1b4603246feb2a690fcab7792d854a02eba491f8397de01680e69"

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
