cask 'gogs' do
  version '0.11.19'
  sha256 'd2f609a7f7abc0ba58968992136dde2c517534343869d6eb2b4101b979c40f8d'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: 'b7e205e24b18e58698a65436d394196ff78c17a749c019568119a34d85f23254'
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
  end
end
