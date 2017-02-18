cask 'gogs' do
  version '0.9.141'
  sha256 '7f212e256a1234bc5f837053cf761b8caeef13a31907e4c2d16f42b9de6b1076'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: '2640ba497b91a8715fb257f6048b0797bace77ef430c98d540a2828a2e90f8ad'
  name 'Go Git Service'
  homepage 'https://gogs.io/'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gogs.wrapper.sh"

  binary shimscript, target: 'gogs'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/sh
      cd '#{staged_path}/gogs' && ./gogs "$@"
    EOS
    set_permissions shimscript, '+x'
  end
end
