cask :v1 => 'amethyst' do
  version '0.9.6'
  sha256 '62f62c915539dd5d9fda7b062286d929eca84db6b7a889cdf91cc538d58c7106'

  url "https://ianyh.com/amethyst/versions/Amethyst-#{version}.zip"
  name 'Amethyst'
  appcast 'https://ianyh.com/amethyst/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'https://ianyh.com/amethyst'
  license :mit

  app 'Amethyst.app'
end
