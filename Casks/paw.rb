cask 'paw' do
  version '3.0.12,1'
  sha256 'e12e1d3233afdda71493238a7f45209248ac46d3a17e640e21de9367bb2ea117'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'd8c013df9507469ea98347619d54678373ecd83291174eadbaa40ad9330368c2'
  name 'Paw'
  homepage 'https://paw.cloud'

  app 'Paw.app'
end
