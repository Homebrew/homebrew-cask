cask 'paw' do
  version '3.1.1,1'
  sha256 '67c668359f76666d7261a4be62cf6dc91a33698a31d93092343259459a24d92b'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'ba015192ce07c426b07054d851572a98863ed51f477df986e2ac7e062cb386fb'
  name 'Paw'
  homepage 'https://paw.cloud/'

  app 'Paw.app'
end
