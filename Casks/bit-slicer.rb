cask "bit-slicer" do
  version "1.7.9"
  sha256 "5dd8ab04ac8ba019bbed906eb6f8efe5d6d6adcb8952eae9fe23bef5138cd420"

  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version}.zip",
      verified: "zgcoder.net/"
  appcast "https://zgcoder.net/bitslicer/update/appcast.xml"
  name "Bit Slicer"
  desc "Universal game trainer"
  homepage "https://github.com/zorgiepoo/bit-slicer/"

  app "Bit Slicer.app"
end
