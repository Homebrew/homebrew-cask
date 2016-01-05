cask 'linear' do
  version '1.1.0'
  sha256 :no_check

  url "https://github.com/mikaa123/linear/releases/download/#{version}/linear.zip"
  name 'Linear'
  homepage 'http://mikaa123.github.io/linear-website/'
  license :mit

  app 'linear.app'
end
