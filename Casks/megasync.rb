cask 'megasync' do
  version :latest
  sha256 :no_check

  url 'https://mega.nz/MEGAsyncSetup.dmg'
  name 'MEGAsync'
  homepage 'https://mega.nz/'

  auto_updates true

  app 'MEGAsync.app'

  caveats <<-EOS.undent
    #{token} only works if called from /Applications, so you may need to install it with
      brew cask install --appdir=/Applications #{token}
  EOS
end
