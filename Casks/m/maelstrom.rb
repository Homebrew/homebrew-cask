cask "maelstrom" do
  version "3.0.7"
  sha256 "7c1770917522a00140b41508da8e9347a534dcdfa0cdedaed05b51a78c83f554"

  url "https://www.libsdl.org/projects/Maelstrom/bin/Maelstrom-#{version}-MacOSX.dmg"
  name "Maelstrom"
  desc "Multidirectional shooter game"
  homepage "https://www.libsdl.org/projects/Maelstrom/index.html"

  deprecate! date: "2024-11-16", because: :unmaintained

  app "Maelstrom.app"

  caveats do
    requires_rosetta
  end
end
