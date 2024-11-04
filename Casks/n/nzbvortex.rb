cask "nzbvortex" do
  version "3.4.3"
  sha256 "fe3831f4a610435e404ce5dc7631d6ed981b5533a9fcd73b3cae0a28af9e2f29"

  url "https://www.nzbvortex.com/downloads/NZBVortex-#{version}.zip"
  name "NZBVortex"
  desc "NZB client, optimised for performance and ease of use"
  homepage "https://www.nzbvortex.com/landing/"

  deprecate! date: "2024-11-04", because: :unmaintained

  app "NZBVortex #{version.major}.app"

  caveats do
    requires_rosetta
  end
end
