cask :v1 => 'paw' do
  version '2.2.6'
  sha256 '2b71cc33da7a841d9232407ba7f44d55e82b3087b69080a7bb84f29e427de6ff'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
