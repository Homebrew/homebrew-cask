cask 'sonora' do
  version '2.0'
  sha256 'ca928780145336439a47355228b0b916734579d9f81df3c02acee490ca5dae9e'

  # github.com is the official download host per the vendor homepage
  url 'https://github.com/downloads/sonoramac/Sonora/Sonora.zip'
  name 'Sonora'
  homepage 'https://getsonora.com/'
  license :gratis

  app 'Sonora.app'
end
