cask 'bandage' do
  version '0.8.1'
  sha256 '13e90e5824b61bd4abe62afa8785a28627714bf7a3d4dad3edb4b8f9854d3b6d'

  # github.com/rrwick/Bandage was verified as official when first introduced to the cask
  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom',
          checkpoint: '538b835e813476438dcfb0fca69c044b4c2766c5e65b5bba1980c3c33c1dc81f'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'

  app 'Bandage.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/bandage.wrapper.sh"
  binary shimscript, target: 'bandage'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Bandage.app/Contents/MacOS/Bandage' "$@"
    EOS
  end
end
