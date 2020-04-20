cask 'rotato' do
  version '98.1586761954'
  sha256 '7f03318c8593e31393c272a2f581c39815362ac8b55176955c23501e31f1b6ce'

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml',
          configuration: "#{version.major}/#{version.minor}"
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
