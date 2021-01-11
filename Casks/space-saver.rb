cask "space-saver" do
  version "0.5"
  sha256 "a6f26f90aef4dd06b222d02bf47c52004b9f71af6e56258467a955fea1d9bea8"

  url "https://www.mariogt.com/appsChest/SpaceSaver#{version.dots_to_hyphens}.zip"
  name "Space Saver"
  desc "Lets you  delete the local Time Machine Backups"
  homepage "https://www.mariogt.com/space-saver.html"

  app "Space Saver.app"
end
