cask 'gogs' do
  version '0.10.1'
  sha256 '968419e59e201f6a12a194c3b192832c98f49b260ff756bab1722205f7b4f3ad'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: '1be784f6655633a275534ad304b6ee53e67fddbfd357c85cae5a0f62c706866e'
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
