cask 'copyq' do
  version '3.2.0'
  sha256 '6e72f41bb4e899493844b2d4affdcc8735b2b9984bff1ea0b7bdb329aaa624f9'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '54d7387e3b126e000d06a0079f14330d73f68e4e57d6c67c355e1ef8b0f0769e'
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
