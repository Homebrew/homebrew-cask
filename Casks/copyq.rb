cask 'copyq' do
  version '3.4.0'
  sha256 '8b8f066c1383debb23d0e2e4832f42f889ec0d830410a3da6115a4dd3a8d6810'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: 'e5569c6f53e7b2ee83a40b6e146fa58809c8ffddd769238eb0bc7047184612cf'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/copyq.wrapper.sh"
  binary shimscript, target: 'copyq'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/CopyQ.app/Contents/MacOS/copyq' "$@"
    EOS
  end
end
