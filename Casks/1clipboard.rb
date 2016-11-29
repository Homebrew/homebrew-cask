cask '1clipboard' do
  version :latest
  sha256 :no_check

  url 'http://1clipboard.io/download/darwin/1Clipboard.dmg'
  name '1Clipboard'
  homepage 'http://1clipboard.io/'

  depends_on macos: '>= :mountain_lion'

  app '1Clipboard.app'
end
