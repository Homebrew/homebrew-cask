cask "jad" do
  version "1.5.8g"
  sha256 "8e9e4ea6c4177acce6d27325a036f10a72c170ed60e48c37c3483335319d07b9"

  url "https://varaneckas.com/jad/jad#{version.no_dots}.mac.intel.zip"
  name "Jad"
  desc "Java decompiler"
  homepage "https://varaneckas.com/jad/"

  disable! date: "2024-07-14", because: "is 32-bit only"

  depends_on macos: "<= :mojave"

  binary "jad"
  manpage "jad.1"
end
