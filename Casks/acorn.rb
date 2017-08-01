cask 'acorn' do
  version '6.0.1'
  sha256 'f8a9be10074294c41d798b2aa5c800c3d2f311e27da5c32d00ad32ce2d2ca388'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '30e47bf816ee96b2a97bd92c4b2ae5248be58107010f77fc5a6c0a8b1c97e0ff'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'
end
