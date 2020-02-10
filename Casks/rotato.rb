cask 'rotato' do
  version '78.1580734444'
  sha256 '68a30326992f8ef64b35a4b1aa627075d347dd93f112d5b595598cd4e4b22428'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml',
          configuration: "#{version.major}/#{version.minor}"
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
