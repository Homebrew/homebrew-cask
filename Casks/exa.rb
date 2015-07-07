cask :v1 => 'exa' do
  version '0.3.0'
  sha256 '228cfce7715b5b908a607e4a659e38d7c83da8c596cccf9860e6531903499dba'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/ogham/exa/releases/download/v#{version}/exa-osx-x86-64.zip"
  appcast 'https://github.com/ogham/exa/releases.atom'
  name 'exa'
  homepage 'http://bsago.me/exa/'
  license :mit

  binary 'exa-osx-x86-64', :target => 'exa'
end
