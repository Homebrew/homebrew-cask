cask :v1 => 'smcfancontrol' do
  version '2.5.1'
  sha256 'ed6dcee1cff9cff3def1b9d98c7bb868b12b9e26205f81915a95187e0d4ed826'

  url "http://www.eidac.de/smcfancontrol/smcfancontrol_#{version.gsub('.', '_')}.zip"
  appcast 'http://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          :sha256 => 'ae81e4093d7aeeeb44ac589d99552d8740483d5f5a2efad57f45ab6ce94496fe'
  homepage 'http://www.eidac.de/?cat=40'
  license :gpl

  app 'smcFanControl.app'
end
