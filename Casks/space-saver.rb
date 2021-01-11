cask "space-saver" do
  version "0-5"
  sha256 "a6f26f90aef4dd06b222d02bf47c52004b9f71af6e56258467a955fea1d9bea8"

  url "https://www.mariogt.com/appsChest/SpaceSaver#{version}.zip"
  name "Space Saver"
  desc "Space Saver is a handy macOS App (Donationware), that lets you delete the local Time Machine Backups on your Mac. This operation could liberate several Megabytes or GigaBytes of space from your main drive. You can run this App when your Mac is not connected to the Time Machine drive and is wasting precious space on Time Machine local backups."
  homepage "https://www.mariogt.com/space-saver.html"

  app "Space Saver.app"
end
