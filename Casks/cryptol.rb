class Cryptol < Cask
  version '2.0.0'
  sha256 '19b3c24390ccb66584f42f34fed91cefc12f667879ab0228cdf806016bcd53c4'

  url 'https://github.com/GaloisInc/cryptol/releases/download/v2.0.0/cryptol-2.0.0-MacOSX-64.tar.gz'
  homepage 'http://cryptol.net/'

  binary 'cryptol-2.0.0-MacOSX-64/bin/cryptol'
  binary 'cryptol-2.0.0-MacOSX-64/lib/Cryptol.cry', :target => '/usr/local/lib/Cryptol.cry'

  caveats do
    files_in_usr_local
    puts "Cryptol depends on CVC4 (http://cvc4.cs.nyu.edu/)."
         "The CVC4 binary must be in your PATH."
  end
end
