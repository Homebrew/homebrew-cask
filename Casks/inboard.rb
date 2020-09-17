cask "inboard" do
  version "1.1.5-431"
  sha256 "b7ec8f738aaf3f0a707fbfc432bfd58b5fe6bb6b880e80102e37c71492966a5b"

  url "https://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast "https://inboardapp.com/appcast.xml"
  name "Inboard"
  desc "App to organize screenshots and photos"
  homepage "https://inboardapp.com/"

  depends_on macos: ">= :high_sierra"

  app "Inboard.app"
end
