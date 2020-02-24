cask 'red-eye' do
  version '1.0'
  sha256 'af58a4b8aa5c08c77f6a5a7b1242a094d1e52f7f74311bfff04ec0ca99bf87ed'

  url 'https://www.hexedbits.com/downloads/redeye.zip'
  appcast 'https://www.hexedbits.com/redeye/'
  name 'Red Eye'
  homepage 'https://www.hexedbits.com/redeye/'

  depends_on macos: '>= :sierra'

  app 'Red Eye.app'
end
