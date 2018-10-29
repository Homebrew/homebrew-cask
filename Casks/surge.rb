cask 'surge' do
  version '3.0.2-736'
  sha256 'ac4b66af29120354dace6ce6c3b78346b10081bc42ae7873095406cbfbfc462b'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  app "Surge #{version.major}.app"
end
