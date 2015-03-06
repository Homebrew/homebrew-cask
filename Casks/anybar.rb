cask :v1 => 'anybar' do
  version '0.1.2'
  sha256 '33816aace0d6bb26b9f2e3b0fea6ca30eb95f4fb650493f998accd0970f1d220'

  url "https://github.com/tonsky/AnyBar/releases/download/#{version}/AnyBar.app.zip"
  name 'AnyBar'
  homepage 'https://github.com/tonsky/AnyBar'
  license :eclipse

  app 'AnyBar.app'
end
