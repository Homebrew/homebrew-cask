cask 'reunion' do
  version '12.0.0.190722'
  sha256 '436b9ef132b711973a6f7a980609bf6d69e000d732a090ac10e4e6d2a471ce73'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml"
  name 'Reunion'
  homepage 'http://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
