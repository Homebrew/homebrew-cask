cask 'acorn' do
  version '5.6.4'
  sha256 'eabbe20a4ea2a4f0dd0d058b088662072dd3ba86f0450f01304aa2b196949526'

  url 'https://secure.flyingmeat.com/download/Acorn.zip'
  appcast "http://www.flyingmeat.com/download/acorn#{version.major}update.xml",
          checkpoint: '012d7f3f20db4a23a1d0c171afe73891d4e3eb6d8705a95f13e0c7ba03c51b20'
  name 'Acorn'
  homepage 'http://flyingmeat.com/acorn/'

  auto_updates true

  app 'Acorn.app'

  postflight do
    suppress_move_to_applications
  end
end
