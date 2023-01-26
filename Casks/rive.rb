cask "rive" do
  version :latest
  sha256 :no_check

  url "https://releases.rive.app/macos/#{version}/Rive.dmg"
  name "Rive"
  desc "Design tool that creates functional graphics"
  homepage "https://rive.app/"

  app "Rive.app"
end
