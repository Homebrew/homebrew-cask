cask "audioslicer" do
  version "1.1.1"
  sha256 "c0ef4d9b1690943def00ce4c7bb2838ff08cfe0d3ff85d39ca1e4ddc97593d01"

  url "https://downloads.sourceforge.net/audioslicer/AudioSlicer/#{version}/AudioSlicer-#{version}.dmg"
  name "AudioSlicer"
  desc "Finds all silences in an audio file"
  homepage "https://audioslicer.sourceforge.net/"

  disable! date: "2024-07-09", because: "is 32-bit only"

  app "AudioSlicer.app"
end
