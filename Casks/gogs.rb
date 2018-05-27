cask 'gogs' do
  version '0.11.43'
  sha256 'cdb4e2178d0e0a4f2ef79c31326150c7cbd9a029cc4fa565a12a5e3c67292a41'

  # github.com/gogits/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogits/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogits/gogs/releases.atom',
          checkpoint: '9c96f53b46dcf12c568b093001360acce49ed5eb25d2408218f4b68cfca1bc8e'
  name 'Go Git Service'
  homepage 'https://gogs.io/'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gogs.wrapper.sh"

  binary shimscript, target: 'gogs'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{staged_path}/gogs' && ./gogs "$@"
    EOS
  end
end
