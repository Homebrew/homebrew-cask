cask 'nally' do
  version '1.4.9'
  sha256 '5b7835f8842aa33d0f40eebddda2686a39f2106dfacd0bde04c3f0911da625d1'

  # github.com is the official download host per the vendor homepage
  url "https://yllan.github.com/nally/download/Nally-#{version}.app.zip"
  name 'Nally'
  homepage 'http://yllan.org/app/Nally/'
  license :gpl

  app 'Nally.app'
end
