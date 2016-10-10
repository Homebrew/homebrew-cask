cask 'adobe-air-sdk' do
  version '22.0'
  sha256 'c6a851909dfaab7ee33cc03c98499363a7e59a6d9e4596f86d93b2bb7a895bc1'

  url "https://airdownload.adobe.com/air/mac/download/#{version}/AIRSDK_Compiler.tbz2"
  name 'Adobe AIR SDK'
  homepage 'https://www.adobe.com/devnet/air/air-sdk-download.html'

  binary 'bin/aasdoc.wrapper.sh',     target: 'aasdoc'
  binary 'bin/acompc.wrapper.sh',     target: 'acompc'
  binary 'bin/adl.wrapper.sh',        target: 'adl'
  binary 'bin/adt.wrapper.sh',        target: 'adt'
  binary 'bin/amxmlc.wrapper.sh',     target: 'amxmlc'
  binary 'bin/asdoc.wrapper.sh',      target: 'asdoc'
  binary 'bin/compc.wrapper.sh',      target: 'compc'
  binary 'bin/fdb.wrapper.sh',        target: 'fdb'
  binary 'bin/fontswf.wrapper.sh',    target: 'fontswf'
  binary 'bin/mxmlc.wrapper.sh',      target: 'mxmlc'
  binary 'bin/optimizer.wrapper.sh',  target: 'optimizer'
  binary 'bin/swcdepends.wrapper.sh', target: 'swcdepends'
  binary 'bin/swfdump.wrapper.sh',    target: 'swfdump'

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
      # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/bin/#{shimscript}.wrapper.sh", <<-EOS.undent
        #!/bin/sh
        exec '#{staged_path}/bin/#{shimscript}' "$@"
      EOS
    end
  end
end
