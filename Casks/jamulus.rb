cask "jamulus" do
  version "3.9.0"

  if MacOS.version <= :sierra
    sha256 "e6492ec6355166d88d48be7d7d3a242739c112841c1f826451be7a5adb0cbd00"
    suffix = "_legacy"
  else
    sha256 "65f04e749c997bde9e1d814cd0423dd6a3fb6868ed1c62e5f8a8f9f2a1a5160c"
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
