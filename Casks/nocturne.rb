cask :v1 => 'nocturne' do
  version '2.0.0'
  sha256 '062ae6b4619ab518650b2f502aaeb7a864bf69e45ce08dec8b5a3f34a027a347'

  url "https://blacktree-nocturne.googlecode.com/files/Nocturne.#{version}.zip"
  homepage 'http://code.google.com/p/blacktree-nocturne/'
  license :oss

  app 'Nocturne.app'
end
