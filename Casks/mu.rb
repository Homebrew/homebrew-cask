cask 'mu' do
  version :latest
  sha256 :no_check

  url 'http://codewith.mu/mu.zip'
  name 'Mu'
  homepage 'http://codewith.mu'
  license :gpl

  app 'Mu.app'
end
