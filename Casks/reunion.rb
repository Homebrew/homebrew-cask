cask 'reunion' do
  version '12.0.0.190924'
  sha256 '729de26b38a0f97990378795a4f372f70880dafa4864da91d7c7e018b88497bf'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml"
  name 'Reunion'
  homepage 'https://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
