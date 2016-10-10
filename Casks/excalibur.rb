cask 'excalibur' do
  version '4.0.7'
  sha256 'e4bf9d459b1df49d80753c9ef32cc8fa4fe6df9cfaa7c21f912052ffb2061202'

  url "http://excalibur.sourceforge.net/get.php?id=#{version.no_dots}d"
  appcast 'http://excalibur.sourceforge.net/change_log.txt',
          checkpoint: '9658dda2ecaf5784ebff74e2ca3110810e14ba4bda5dcd98c18a92959260e63e'
  name 'Excalibur'
  homepage 'http://excalibur.sourceforge.net'

  app 'Excalibur.app'
end
