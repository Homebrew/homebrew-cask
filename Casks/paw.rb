cask :v1 => 'paw' do
  version '2.2.3'
  sha256 '8fc087749411f3dbdbf94e62e53b740cdbf3b6e4ca856d21c26fc88fc4936980'

  url "https://luckymarmot.com/paw/download/#{version}"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
