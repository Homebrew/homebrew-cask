cask "jamulus" do
  version "3.8.2"

  if MacOS.version <= :sierra
    sha256 "d425ab355ae03849638829f68a71b8497139b5919cb3ce52a9f6742ba2101d62"
    suffix = "_legacy"
  else
    sha256 "d1f85e0ca04a2a648890a84bb3740ec36477f6f28e6cc3a35883aef7e655be50"
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
