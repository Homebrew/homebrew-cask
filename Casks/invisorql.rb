cask 'invisorql' do
  version '2.3'
  sha256 '5c50a72af0edff9aa77e3209c3b9f48f36044c60ee83bc8f4afd993964ce4fa9'

  url "http://www.pozdeev.com/invisor/download/InvisorQL-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/changelog-ql.php',
          checkpoint: '7f58ba19ad1422d0d949fc6d56ae24c623033e8b2fbadf5a1dae8509ed527ee6'
  name 'Invisor QuickLook Plug-In'
  homepage 'https://www.pozdeev.com/invisor/'

  depends_on macos: '>= :lion'
  depends_on cask: 'invisor-lite'

  qlplugin 'InvisorQL.qlgenerator'
end
