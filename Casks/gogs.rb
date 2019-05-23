cask 'gogs' do
  version '0.11.86'
  sha256 '0f7b1800e7004d7ce99eb59eb3487efe1a198e5aa2a77d79cf7f29378600143a'

  # github.com/gogs/gogs was verified as official when first introduced to the cask
  url "https://github.com/gogs/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast 'https://github.com/gogs/gogs/releases.atom'
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
