cask "rocket-typist" do
  version "2.4,162b"
  sha256 :no_check

  url "https://witt-software.com/downloads/rockettypist/Rocket%20Typist.dmg"
  name "Rocket Typist"
  desc "Text expander for common phrases"
  homepage "https://witt-software.com/rockettypist/"

  livecheck do
    url "https://witt-software.com/downloads/rockettypist/appcast.xml"
    strategy :sparkle
  end

  app "Rocket Typist.app"
end
