cask "jamulus" do
  version "3.8.1"
  sha256 "79fffe5c72c38260e6e5edff07ecccb355995c502d8a4a8c710eeccff8284624"

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :el_capitan"

  app "Jamulus.app"
  app "JamulusServer.app"
end
