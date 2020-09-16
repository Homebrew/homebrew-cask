cask "jad" do
  version "1.5.8g"
  sha256 "8e9e4ea6c4177acce6d27325a036f10a72c170ed60e48c37c3483335319d07b9"

  url "https://varaneckas.com/jad/jad#{version.no_dots}.mac.intel.zip"
  appcast "https://varaneckas.com/jad/"
  name "Jad - the fast Java Decompiler"
  homepage "https://varaneckas.com/jad/"

  binary "jad"
  manpage "jad.1"

  caveats <<~EOS
    Instructions on using jad are available in

      #{staged_path}/Readme.txt
  EOS
end
