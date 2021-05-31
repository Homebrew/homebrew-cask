cask "bit-slicer" do
  version "1.7.10"
  sha256 "0701a5f1db34662eee41855a407bb5453d7e710eebb23d82876d31ee4799e540"

  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version}.zip",
      verified: "zgcoder.net/"
  name "Bit Slicer"
  desc "Universal game trainer"
  homepage "https://github.com/zorgiepoo/bit-slicer/"

  livecheck do
    url "https://zgcoder.net/bitslicer/update/appcast.xml"
    strategy :page_match
    regex(/Bit_Slicer_?(\d+(?:\.\d+)*)\.zip/i)
  end

  app "Bit Slicer.app"
end
