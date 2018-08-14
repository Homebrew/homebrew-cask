cask 'excalibur' do
  version '4.0.7'
  sha256 'e4bf9d459b1df49d80753c9ef32cc8fa4fe6df9cfaa7c21f912052ffb2061202'

  url "http://excalibur.sourceforge.net/get.php?id=#{version.no_dots}d"
  appcast 'http://excalibur.sourceforge.net/change_log.txt'
  name 'Excalibur'
  homepage 'http://excalibur.sourceforge.net/'

  app 'Excalibur.app'

  zap trash: [
               '~/Library/Preferences/Excalibur Preferences',
               '~/Library/Saved Application State/edu.bucknell.Excalibur.savedState',
             ]
end
