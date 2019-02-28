cask 'rotato' do
  version '58.1551252680'
  sha256 'f9acd75560e864e64b3121cb2dd604b7ad97d6a2a6ecbee4e0f48eafe92c6ec9'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml'
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
