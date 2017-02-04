cask 'gogs' do
  version '0.9.128'
  sha256 'a7cdeab4fd1792f33b5a9544b31f341eec3d0783de2980e5d38a1ff60f40d78c'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: '2d2c57e26acb78c13bec66d0b870091dd94f81247749322ff8cd84ee185594fd'
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
