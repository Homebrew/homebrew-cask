cask 'gogs' do
  version '0.9.113'
  sha256 '55d907a0990598a7cb45ecae2af95c69c6383cd2ce63ff394df6894901f4df74'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
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
