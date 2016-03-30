cask '1clipboard' do
  version :latest
  sha256 :no_check

  url 'http://1clipboard.io/download/darwin/1Clipboard.dmg'
  name '1Clipboard'
  homepage 'https://1clipboard.io/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  depends_on macos: '>= :mountain_lion'

  app '1Clipboard.app'
end
