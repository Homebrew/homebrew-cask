cask 'paw' do
  version '3.0.13,1'
  sha256 '1a44e5fbbcdc4cf5e4543c4b980309b99402026359688a613b5aef8d394a5ff9'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'aa05f0eb9177ded8dd467d60b875f0f27347b93fcbcf0978d9de0d95f5d7b529'
  name 'Paw'
  homepage 'https://paw.cloud'

  app 'Paw.app'
end
