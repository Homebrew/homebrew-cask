cask 'excalibur' do
  version '4.0.7'
  sha256 'e4bf9d459b1df49d80753c9ef32cc8fa4fe6df9cfaa7c21f912052ffb2061202'

  url "https://excalibur.sourceforge.io/get.php?id=#{version.no_dots}d"
  appcast 'https://excalibur.sourceforge.io/change_log.txt'
  name 'Excalibur'
  homepage 'https://excalibur.sourceforge.io/'

  app 'Excalibur.app'

  zap trash: [
               '~/Library/Preferences/Excalibur Preferences',
               '~/Library/Saved Application State/edu.bucknell.Excalibur.savedState',
             ]
end
