cask 'invisorql' do
  version '2.0'
  sha256 '0ac603ab71b927d55a2580a498380b0cada46f3bc50c6439fb1879c793a6f543'

  url "http://www.pozdeev.com/invisor/download/InvisorQL-#{version}.dmg"
  name 'Invisor QuickLook Plug-In'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  depends_on macos: '>= :lion'
  depends_on arch: :x86_64
  depends_on cask: 'invisor-lite'

  qlplugin 'InvisorQL.qlgenerator'
end
