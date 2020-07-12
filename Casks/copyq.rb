cask 'copyq' do
  version '3.12.0'
  sha256 'f80d422a23d3992df88e481189d680c0765ef41847d4b81ce017c951ab3435b8'

  # github.com/hluk/CopyQ/ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/copyq.wrapper.sh"
  binary shimscript, target: 'copyq'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/CopyQ.app/Contents/MacOS/CopyQ' "$@"
    EOS
  end

  caveats do
    unsigned_accessibility
  end
end
