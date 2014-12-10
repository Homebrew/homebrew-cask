cask :v1 => 'picasa' do
  version '3.9'
  sha256 '189f57b3dd13fb40fc473c2569400744e82c51221de0d360be513ba0fdeb911e'

  url "https://dl.google.com/photos/picasamac#{version.gsub('.', '')}.dmg"
  homepage 'http://picasa.google.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Picasa.app'
end
