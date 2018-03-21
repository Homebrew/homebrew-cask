cask 'copyq' do
  version '3.3.0'
  sha256 'f16722aefdc21a7ea3ef8927151e83a4ac539154f9a9fe65c144a2683f8a0c27'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '53ff9d73c7049c98cd1498b12e0510d8032d01147f74228e1574ddd0b51669dc'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/copyq.wrapper.sh"
  binary shimscript, target: 'copyq'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/CopyQ.app/Contents/MacOS/copyq' "$@"
    EOS
  end
end
