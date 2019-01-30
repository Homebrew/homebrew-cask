cask 'kamel' do
  version '0.2.0'
  sha256 '2bc71571c09468ddc08f830d35236b4c69841d9347fd28ea2968022b9fc1806f'

  url "https://github.com/apache/camel-k/releases/download/#{version}/camel-k-client-#{version}-mac-64bit.tar.gz"
  appcast 'https://github.com/apache/camel-k/releases.atom'
  name 'kamel'
  homepage 'https://github.com/apache/camel-k'

  binary "kamel"
end
