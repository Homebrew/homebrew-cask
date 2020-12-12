cask "notational-velocity" do
  version "2.0b5"
  sha256 :no_check

  url "http://notational.net/NotationalVelocity.zip"
  appcast "http://notational.net/nvupdates.xml"
  name "Notational Velocity"
  homepage "http://notational.net/"

  app "Notational Velocity.app"
end
