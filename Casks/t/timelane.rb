cask "timelane" do
  version "2.0"
  sha256 "3334fbb6945d1f0cb8f535c399297356037f4fdd5c570fd7a7325f5b4bd8b57a"

  url "https://github.com/icanzilb/Timelane/releases/download/#{version}/Timelane.app-#{version}.zip",
      verified: "github.com/icanzilb/Timelane/"
  name "Timelane"
  homepage "https://timelane.tools/"

  depends_on macos: ">= :mojave"

  app "Timelane.app"

  caveats do
    requires_rosetta
  end
end
