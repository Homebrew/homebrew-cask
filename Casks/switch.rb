cask 'switch' do
  version :latest
  sha256 :no_check

  url 'http://www.nch.com.au/components/switchmaci.zip'
  name 'Switch Audio Converter'
  homepage 'http://www.nch.com.au/switch/'
  license :closed

  container nested: 'Switch_i.dmg'

  app 'Switch.app'
end
