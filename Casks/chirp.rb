cask 'chirp' do
  version '0.4.1'
  sha256 '3e7800db7f73c15aa1bf126a60b23617ec549bfd84adf64e8f3a1d41091cce59'

  url "http://chirp.danplanet.com/download/#{version}/chirp-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/'

  depends_on arch: :intel
  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-#{version}.app"
end
