cask 'jad' do
  version '1.5.8g'
  sha256 '8e9e4ea6c4177acce6d27325a036f10a72c170ed60e48c37c3483335319d07b9'

  url "https://www.varaneckas.com/jad/jad#{version.no_dots}.mac.intel.zip"
  appcast 'https://varaneckas.com/jad/',
          checkpoint: 'bb55710550b36e3add01abe3d3746f0c12e6d9b1dbecc7c8898f997742b325d2'
  name 'Jad - the fast Java Decompiler'
  homepage 'https://varaneckas.com/jad/'

  binary 'jad'
  artifact 'jad.1', target: "#{HOMEBREW_PREFIX}/share/man/man1/jad.1"

  caveats <<~EOS
    Instructions on using jad are available in

      #{staged_path}/Readme.txt
  EOS
end
