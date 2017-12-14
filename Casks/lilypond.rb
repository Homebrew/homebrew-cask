cask 'lilypond' do
  version '2.18.2-1'
  sha256 '0009bf234db6a598e30940ae9a5cef50ffe939992c9bf0c7959ecd9c0d179c80'

  # linuxaudio.org/lilypond was verified as official when first introduced to the cask
  url "https://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  appcast 'https://download.linuxaudio.org/lilypond/binaries/darwin-x86/',
          checkpoint: 'dd561bea122f7be6e6314bd39f42d6325bd5cc701e1ea75ca5f866294da7f3c5'
  name 'LilyPond'
  homepage 'http://lilypond.org/'

  app 'LilyPond.app'

  binaries = [
               'abc2ly',
               'convert-ly',
               'lilypond',
               'lilypond-book',
               'musicxml2ly',
             ]

  binaries.each do |shimscript|
    binary "#{staged_path}/#{shimscript}.wrapper.sh", target: shimscript
  end

  preflight do
    binaries.each do |shimscript|
      # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/#{shimscript}.wrapper.sh", <<~EOS
        #!/bin/sh
        exec '#{appdir}/LilyPond.app/Contents/Resources/bin/#{shimscript}' "$@"
      EOS
    end
  end

  zap trash: [
               '~/Library/Preferences/org.lilypond.lilypond.plist',
               '~/Library/Preferences/org.lilypond.lilypond.LSSharedFileList.plist',
             ]
end
