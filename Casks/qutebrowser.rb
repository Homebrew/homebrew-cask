cask 'qutebrowser' do
  version '1.0.2'
  sha256 'f24491e725d089c66a870c321c89f6b228bc8fa0d30adc885d0b2d9a387dab87'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '84277963356ff7826c4a03cf358ae22231b1cbcd995beba14814a13876b34808'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'
end
