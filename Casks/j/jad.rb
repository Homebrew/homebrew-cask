cask "jad" do
  version "1.5.8g"
  sha256 "8e9e4ea6c4177acce6d27325a036f10a72c170ed60e48c37c3483335319d07b9"

  url "https://varaneckas.com/jad/jad#{version.no_dots}.mac.intel.zip"
  name "Jad"
  desc "Java decompiler"
  homepage "https://varaneckas.com/jad/"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: "<= :mojave"

  binary "jad"
  manpage "jad.1"

  caveats do
    <<~EOS
      Instructions on using jad are available in

        #{staged_path}/Readme.txt
    EOS
  end
end
