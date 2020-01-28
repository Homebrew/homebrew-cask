cask 'rotato' do
  version '77.1580131241'
  sha256 '84de09b81cd73035eb04a104b3454a5e36f2c89f9b3a99c01135d718745542ff'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml',
          configuration: "#{version.major}/#{version.minor}"
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
