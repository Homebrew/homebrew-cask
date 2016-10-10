cask 'nally' do
  version '1.4.9'
  sha256 '5b7835f8842aa33d0f40eebddda2686a39f2106dfacd0bde04c3f0911da625d1'

  # yllan.github.com/nally was verified as official when first introduced to the cask
  url "https://yllan.github.com/nally/download/Nally-#{version}.app.zip"
  name 'Nally'
  homepage 'http://yllan.org/app/Nally/'

  app 'Nally.app'
end
