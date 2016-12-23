cask 'paw' do
  version '3.0.14,3'
  sha256 'a2b6397fb09a33b1d3e85963c31dd1d80e452eca9373795317b9b3e37b3fdc6f'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'd52b621d313f3adea75d012f39cfaeb50c79891d72fb6028f352669a5dc079b7'
  name 'Paw'
  homepage 'https://paw.cloud/'

  app 'Paw.app'
end
