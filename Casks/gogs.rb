cask 'gogs' do
  version '0.9.97'
  sha256 '281f107e5403374702f6080e7395f4728e5b978fc0484565fc46df3d367f8b80'

  url "https://cdn.gogs.io/gogs_v#{version}_darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: '671ed3b027d5319b32029f8d95f787267bd7533b71ee72b9e640eb3a201cf50b'
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
    FileUtils.chmod '+x', shimscript
  end
end
