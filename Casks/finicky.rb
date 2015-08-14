cask :v1 => 'finicky' do
  version '0.4'
  sha256 '72f482279ca346f86f5d7d906a7c55da3e8eb446d3105979cbfc2b02d3ead154'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'
  license :mit

  app 'Finicky.app'
end
