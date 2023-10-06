cask "palemoon" do
  arch arm: "arm", intel: "intel"
  version '32.4.1'
  sha256 :no_check

  url "https://www.palemoon.org/download.php?mirror=us&bits=64&type=mac#{arch}"
  name "Palemoon"
  desc "Open Source, Goanna-based web browser"
  homepage "https://www.palemoon.org/"

  livecheck do
    url "https://repo.palemoon.org/MoonchildProductions/Pale-Moon/releases.rss"
    regex(/(?<=<title>Pale Moon )(.*?)(?=<\/title>)/)
    strategy :page_match
  end

  app "Pale Moon.app"
end
