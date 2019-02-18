cask 'rotato' do
  version '52.1550499356'
  sha256 'cf6d850ab941ed396a6eb7d06b7a88c2b1263bc7626137ed7eab47ad6f74fca2'

  # dl.devmate.com/com.mortenjust.Rendermock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.major}/#{version.minor}/DesignCamera-#{version.major}.zip"
  appcast 'https://updates.devmate.com/com.mortenjust.Rendermock.xml'
  name 'Rotato'
  homepage 'https://rotato.xyz/'

  app 'Rotato.app'
end
