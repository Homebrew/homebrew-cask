cask "ccmenu" do
  version "15.0d1"
  sha256 "39e127b79392a3476adda15ee72c47d0512f42e2b185eebd0ac91eff7081a1ee"

  url "https://github.com/erikdoe/ccmenu/releases/download/v#{version}/CCMenu.app.zip",
      verified: "github.com/erikdoe/ccmenu/"
  appcast "https://github.com/erikdoe/ccmenu/releases.atom"
  name "CCMenu"
  desc "Application to monitor continuous integration servers"
  homepage "http://ccmenu.org/"

  app "CCMenu.app"
end
