cask "jamulus" do
  version "3.8.1"

  if MacOS.version <= :sierra
    sha256 "d425ab355ae03849638829f68a71b8497139b5919cb3ce52a9f6742ba2101d62"
    suffix = "_legacy"
  else
    sha256 "79fffe5c72c38260e6e5edff07ecccb355995c502d8a4a8c710eeccff8284624"
    suffix = ""
  end

  url "https://downloads.sourceforge.net/llcon/jamulus_#{version}_mac#{suffix}.dmg",
      verified: "downloads.sourceforge.net/llcon/"
  name "Jamulus"
  desc "Play music online with friends"
  homepage "https://jamulus.io/"

  depends_on macos: ">= :el_capitan"

  app "Jamulus.app"
  app "JamulusServer.app"
end
