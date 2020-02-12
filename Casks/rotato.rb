cask 'rotato' do
  version '79.1581347543'
  sha256 '50917acde87af872c89baf11b9e2d7788dbd3b0f6a496a530894a4895661722a'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml',
          configuration: "#{version.major}/#{version.minor}"
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
