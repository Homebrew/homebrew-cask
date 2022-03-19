cask "bit-slicer" do
  version "1.7.11"
  sha256 "ca32c3222dd4a7b0227a82c4afecfb6117ca7af29122b82f934b8dd5110ffbb7"

  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version}.zip",
      verified: "zgcoder.net/"
  name "Bit Slicer"
  desc "Universal game trainer"
  homepage "https://github.com/zorgiepoo/bit-slicer/"

  livecheck do
    url "https://zgcoder.net/bitslicer/update/appcast.xml"
    regex(/Bit_Slicer_?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Bit Slicer.app"
end
