cask "cinch" do
  version "1.2.4"
  sha256 "68afff19aaff4885e803733df74cfc87fe6529ec57107d21bddcb00d61dd14a0"

  url "https://www.irradiatedsoftware.com/downloads/Cinch_#{version}.zip"
  name "Cinch"
  desc "Window management tool"
  homepage "https://www.irradiatedsoftware.com/cinch/"

  deprecate! date: "2025-03-01", because: :unmaintained

  app "Cinch.app"

  caveats do
    requires_rosetta
  end
end
