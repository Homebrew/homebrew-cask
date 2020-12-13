cask "startninja" do
  version :latest
  sha256 :no_check

  url "https://dl2.macupdate.com/prod/StartNinjaInstaller.dmg",
      verified: "dl2.macupdate.com/prod/"
  name "StartNinja"
  homepage "https://www.allvu.com/start_ninja"

  app "StartNinja.app"
end
