cask "bit-slicer" do
  version "1.7.9,1135"
  sha256 "5dd8ab04ac8ba019bbed906eb6f8efe5d6d6adcb8952eae9fe23bef5138cd420"

  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version.before_comma}.zip",
      verified: "zgcoder.net/"
  name "Bit Slicer"
  desc "Universal game trainer"
  homepage "https://github.com/zorgiepoo/bit-slicer/"

  livecheck do
    url "https://zgcoder.net/bitslicer/update/appcast.xml"
    strategy :sparkle
  end

  app "Bit Slicer.app"
end
