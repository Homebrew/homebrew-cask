cask 'nozbe' do
  version '3.7.2'
  sha256 'fbbd86ee96037dc7e3ef289d12c547b1d25edf5baf51011ec1310d058bc8ca33'

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
