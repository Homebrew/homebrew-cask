cask "openphone" do
  version "2.0.19"
  sha256 "11c2a20e311f260bd4535af50c55c1186ed7c29fa12b2389a4438b56d6bdbd30"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  app "OpenPhone.app"
end
