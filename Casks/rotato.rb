cask 'rotato' do
  version '59.1551366700'
  sha256 'f71b344efb8cb75e0a0300aea4c53daea4a97c6f1f9c870f3a48dda992ab0705'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml'
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
