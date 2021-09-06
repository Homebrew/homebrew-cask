cask "inboard" do
  version "1.1.5,431"
  sha256 "b7ec8f738aaf3f0a707fbfc432bfd58b5fe6bb6b880e80102e37c71492966a5b"

  url "https://inboardapp.com/trial/Inboard-#{version.before_comma}-#{version.after_comma}.zip"
  name "Inboard"
  desc "App to organize screenshots and photos"
  homepage "https://inboardapp.com/"

  livecheck do
    url "https://inboardapp.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Inboard.app"
end
