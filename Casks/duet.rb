cask :v1 => 'duet' do
  version '1.3.2_1435536275'
  sha256 '18629ffa421cfd4482414137575ad1b95870ac345e10719d2b953d7f0f72333a'

  # devmate.com is the official download host per the vendor homepage
  url "http://dl.devmate.com/com.kairos.duet/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/duet-#{version.sub(%r{_.*},'')}.zip"
  name 'Duet'
  appcast 'http://updates.duetdisplay.com/checkMacUpdates',
          :sha256 => '04eef17e70ab06721cd521525bac3bb0a41659281a56ef3187df0b4b140dc71f'
  homepage 'http://www.duetdisplay.com/'
  license :unknown

  app 'duet.app'

  uninstall :kext => 'com.karios.driver.DuetDisplay'
end
