cask 'paw' do
  version '3.0.16,2'
  sha256 '209558d1f421b25f15780a3dcba008b0907492853e83791554b865c685ed4ced'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version.major_minor_patch}-#{version.major}#{version.minor.rjust(3, '0')}#{version.patch.rjust(3, '0')}#{version.after_comma.rjust(3, '0')}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'cbb0e27c3413dd1f6115a8a0cb0421919242f3b861ee25b2fd8a38abe2383e49'
  name 'Paw'
  homepage 'https://paw.cloud/'

  app 'Paw.app'
end
