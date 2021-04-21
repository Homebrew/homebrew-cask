cask "imagej" do
  version "1.52"
  sha256 "17e1ee34c2886f9abb350da271b8e3d5063dfa4547388c34e84a75d2b5c0bc56"

  url "https://wsr.imagej.net/distros/osx/ImageJ#{version.no_dots}.zip",
      verified: "wsr.imagej.net/distros/osx/"
  name "ImageJ"
  homepage "https://imagej.nih.gov/ij/index.html"

  suite "ImageJ"

  caveats do
    depends_on_java
  end
end
