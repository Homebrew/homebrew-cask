cask :v1 => 'megasync' do
  version :latest
  sha256 :no_check

  url 'https://mega.nz/MEGAsyncSetup.dmg'
  name 'MEGAsync'
  homepage 'https://mega.co.nz'
  license :gratis

  app 'MEGAsync.app'
end
