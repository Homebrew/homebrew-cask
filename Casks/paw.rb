cask :v1 => 'paw' do
  version '2.2.4'
  sha256 '899637641d6266db7f803d9e19c34d63e23e8897cf548f1b0a30901fa99342e7'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
