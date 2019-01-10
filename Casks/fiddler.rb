cask 'fiddler' do
  version :latest
  sha256 :no_check

  # telerik-fiddler.s3.amazonaws.com/fiddler was verified as official when first introduced to the cask
  url 'https://telerik-fiddler.s3.amazonaws.com/fiddler/fiddler-mac.zip'
  name 'Telerik Fiddler Proxy'
  homepage 'http://www.telerik.com/fiddler'

  depends_on cask: 'mono-mdk'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/fiddler.wrapper.sh"
  binary shimscript, target: 'fiddler'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        mono Fiddler.exe "${@}"
    EOS
  end
end
