cask 'meld' do
  version '3.21.0-r1,osx-17'
  sha256 '1eb9e512cd03e69bf41f1d267e467893aa0d0bc3c930f600cb616382efdc1317'

  # github.com/yousseb/meld was verified as official when first introduced to the cask
  url "https://github.com/yousseb/meld/releases/download/#{version.after_comma}/meldmerge.dmg"
  appcast 'https://github.com/yousseb/meld/releases.atom'
  name 'Meld for OSX'
  homepage 'https://yousseb.github.io/meld/'

  app 'Meld.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/meld.wrapper.sh"
  binary shimscript, target: 'meld'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Meld.app/Contents/MacOS/Meld' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Preferences/org.gnome.meld.plist',
               '~/.local/share/meld',
               '~/Library/Saved Application State/org.gnome.meld.savedState/',
             ]
end
