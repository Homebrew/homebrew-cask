cask 'electrumsv' do
  version '1.1.1'
  sha256 'ae8cca72fb241a77ba40790aaf87465a7064f3f9f4c649ed4b091f0010078dfe'

  url "https://electrumsv.io/download/#{version}/ElectrumSV-#{version}.dmg"
  appcast 'https://github.com/electrumsv/electrumsv/releases.atom'
  name 'ElectrumSV'
  homepage 'https://electrumsv.io/'

  app 'ElectrumSV.app'
end
