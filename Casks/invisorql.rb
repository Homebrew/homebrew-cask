cask 'invisorql' do
  version '3.0'
  sha256 '12c98bb32dfe0281f9a0c9ce86ba5c8418094676b6e99b30d115ebf0eaf8997f'

  url "https://www.invisorapp.com/download/InvisorQuickLook-#{version}.dmg"
  appcast 'https://www.invisorapp.com/changelog-ql.php'
  name 'Invisor QuickLook Plug-In'
  homepage 'https://www.invisorapp.com/'

  depends_on cask: 'invisor-lite'

  qlplugin 'Invisor QuickLook.app/Contents/Library/QuickLook/InvisorQL.qlgenerator'
end
