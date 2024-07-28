cask "powder" do
  version "98.2"
  sha256 :no_check

  url "https://powdertoy.co.uk/Download/powder.dmg"
  name "Powder Toy"
  desc "Physics sandbox game"
  homepage "https://powdertoy.co.uk/"

  livecheck do
    url :homepage
    regex(%r{macOS</dt>\n\t*<dd class="Version">(\d+(?:\.\d+)+)}i)
  end

  app "The Powder Toy.app"

  zap trash: [
    "~/Library/Application Support/The Powder Toy",
    "~/Library/Saved Application State/uk.co.powdertoy.tpt.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
