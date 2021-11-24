cask "openphone" do
  version "3.2.44"
  sha256 "fd2991a2f4dddc242aabb4dd5c6ca5953a3b14144de11673662649326040e0e4"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  name "OpenPhone"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.openphone.co/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  app "OpenPhone.app"
end
