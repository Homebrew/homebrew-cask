cask "powder" do
  version "96.2"
  sha256 :no_check

  url "https://powdertoy.co.uk/Download/powder.dmg"
  name "Powder Toy"
  desc "Physics sandbox game"
  homepage "https://powdertoy.co.uk/"

  livecheck do
    url :homepage
    regex(%r{macOS</dt>\n\t*<dd class="Version">(\d+(?:\.\d+)*)}i)
  end

  app "Powder.app"
end
