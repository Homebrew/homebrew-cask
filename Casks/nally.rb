cask :v1 => 'nally' do
  version '1.4.9'
  sha256 '5b7835f8842aa33d0f40eebddda2686a39f2106dfacd0bde04c3f0911da625d1'

  url "https://yllan.github.com/nally/download/Nally-#{version}.app.zip"
  homepage 'http://yllan.org/app/Nally/'
  license :oss

  app 'Nally.app'
end
