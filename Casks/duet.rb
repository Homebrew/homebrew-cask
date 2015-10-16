cask :v1 => 'duet' do
  version '1.3.2_1435536275'
  sha256 '18629ffa421cfd4482414137575ad1b95870ac345e10719d2b953d7f0f72333a'

  # devmate.com is the official download host per the vendor homepage
  url "http://dl.devmate.com/com.kairos.duet/#{version.sub(%r{_.*},'')}/#{version.sub(%r{.*_},'')}/duet-#{version.sub(%r{_.*},'')}.zip"
  name 'Duet'
  appcast 'http://updates.duetdisplay.com/checkMacUpdates',
          :sha256 => 'df779f7d35f7327a12bec484865311b869e6d09ccc6b43e11599d1dd47d1bc9d'
  homepage 'http://www.duetdisplay.com/'
  license :unknown

  app 'duet.app'

  uninstall :kext => 'com.karios.driver.DuetDisplay'
end
