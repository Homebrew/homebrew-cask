cask "rocket-typist" do
  version "2.4.2"
  sha256 :no_check

  url "https://witt-software.com/downloads/rockettypist/Rocket%20Typist.dmg"
  name "Rocket Typist"
  desc "Text expander for common phrases"
  homepage "https://witt-software.com/rockettypist/"

  livecheck do
    url "https://witt-software.com/downloads/rockettypist/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  app "Rocket Typist.app"
end
