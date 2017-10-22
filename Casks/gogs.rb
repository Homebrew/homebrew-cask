cask 'gogs' do
  version '0.11.29'
  sha256 '25e12b7e7baf333baa8a5f12fd4d2458e36ed66dd8ac81aa2ad5c0a02a9ded8d'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: 'eb7f96e10404437352cd32e252b633ff4d106bf5ad808d6c26e74b29e4f8e271'
  name 'Go Git Service'
  homepage 'https://gogs.io/'

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gogs.wrapper.sh"

  binary shimscript, target: 'gogs'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{staged_path}/gogs' && ./gogs "$@"
    EOS
  end
end
