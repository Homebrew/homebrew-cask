cask 'invisorql' do
  version '2.3'
  sha256 '5c50a72af0edff9aa77e3209c3b9f48f36044c60ee83bc8f4afd993964ce4fa9'

  url "http://www.pozdeev.com/invisor/download/InvisorQL-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/changelog-ql.php',
          checkpoint: '09badd03c1cedf90e190c70e7a719740354360bf63f2e084bb1b8dd5bca105c4'
  name 'Invisor QuickLook Plug-In'
  homepage 'https://www.pozdeev.com/invisor/'

  depends_on cask: 'invisor-lite'

  qlplugin 'InvisorQL.qlgenerator'
end
