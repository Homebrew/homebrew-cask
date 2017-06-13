cask 'jad' do
  version '1.5.8g'
  sha256 '8e9e4ea6c4177acce6d27325a036f10a72c170ed60e48c37c3483335319d07b9'

  url "https://www.varaneckas.com/jad/jad#{version.no_dots}.mac.intel.zip"
  appcast 'https://varaneckas.com/jad/',
          checkpoint: '3e17e5ad6e2154b16d1a69d8f6acd5e983ae450a5107e128963c4e33b4eb3609'
  name 'Jad - the fast Java Decompiler'
  homepage 'https://varaneckas.com/jad/'

  binary 'jad'
  artifact 'jad.1', target: '/usr/local/share/man/man1/jad.1'

  caveats <<-EOS.undent
    Instructions on using jad are available in

      #{staged_path}/Readme.txt
  EOS
end
