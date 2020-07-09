cask 'rotato' do
  version '101.1594282310'
  sha256 'b5ebaab20ed92ba4f54dd52d39b0d4b5361968ed8a9afb73280fe52ebd6e4cbc'

  # dl.devmate.com/com.mortenjust.Rendermock/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml',
          must_contain: "#{version.major}/#{version.minor}"
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  depends_on macos: '>= :high_sierra'

  app 'Rotato.app'
end
