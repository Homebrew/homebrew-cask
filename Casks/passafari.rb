cask 'passafari' do
  version '0.2'
  sha256 '9b9b71fd4af2c7519d0b5cbf35920760a07d5368cfeefcff7ef16d3745405470'

  url 'https://github.com/adur1990/Passafari/releases/download/0.2/Passafari.app.zip'
  name 'Passafari'
  homepage 'https://github.com/adur1990/Passafari'

  app 'Passafari.app'

  appcast 'https://github.com/adur1990/Passafari/releases.atom'
end
