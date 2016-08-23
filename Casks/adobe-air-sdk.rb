cask 'adobe-air-sdk' do
  version '22.0'
  sha256 'c6a851909dfaab7ee33cc03c98499363a7e59a6d9e4596f86d93b2bb7a895bc1'

  url "https://airdownload.adobe.com/air/mac/download/#{version}/AIRSDK_Compiler.tbz2"
  name 'Adobe AIR SDK'
  homepage 'https://www.adobe.com/devnet/air/air-sdk-download.html'
  license :closed

  binary 'bin/aasdoc.wrapper',     target: 'aasdoc'
  binary 'bin/acompc.wrapper',     target: 'acompc'
  binary 'bin/adl.wrapper',        target: 'adl'
  binary 'bin/adt.wrapper',        target: 'adt'
  binary 'bin/amxmlc.wrapper',     target: 'amxmlc'
  binary 'bin/asdoc.wrapper',      target: 'asdoc'
  binary 'bin/compc.wrapper',      target: 'compc'
  binary 'bin/fdb.wrapper',        target: 'fdb'
  binary 'bin/fontswf.wrapper',    target: 'fontswf'
  binary 'bin/mxmlc.wrapper',      target: 'mxmlc'
  binary 'bin/optimizer.wrapper',  target: 'optimizer'
  binary 'bin/swcdepends.wrapper', target: 'swcdepends'
  binary 'bin/swfdump.wrapper',    target: 'swfdump'

  preflight do
    %w[
      aasdoc
      acompc
      adl
      adt
      amxmlc
      asdoc
      compc
      fdb
      fontswf
      mxmlc
      optimizer
      swcdepends
      swfdump
    ].each do |shimscript|
      IO.write "#{staged_path}/bin/#{shimscript}.wrapper", <<-EOF.undent
        #!/bin/sh
        exec '#{staged_path}/bin/#{shimscript}' "$@"
      EOF
    end
  end
end
