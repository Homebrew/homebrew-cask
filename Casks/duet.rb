cask :v1 => 'duet' do
  version '1.4.0_1439081188'
  sha256 'd3123f40c9d6d9989e8f9f9dd2ca3f3ccad79304ce739fcaa32d2334de4de4d2'

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
