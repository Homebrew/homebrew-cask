cask 'megacmd-app' do
  version :latest
  sha256 :no_check

  url 'https://mega.nz/MEGAcmdSetup.dmg'
  name 'MEGAcmd'
  homepage 'https://mega.nz/cmd'

  app 'MEGAcmd.app'
  binary "#{appdir}/MEGAcmd.app/Contents/MacOS/MEGAcmdLoader", target: 'megacmd'

  zap trash: '~/.megaCmd'

  caveats <<~EOS
    #{token} only works if called from /Applications, so you may need to install it with
      brew cask install --appdir=/Applications #{token}
  EOS
end
