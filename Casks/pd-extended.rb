cask 'pd-extended' do
  version '0.43.4'
  sha256 'abe7bd637b1495ad9d5a500f0a18550c1600e34ee17e60aa1a48e4dbdee59bb9'

  url "https://downloads.sourceforge.net/pure-data/pd-extended/#{version}/Pd-#{version}-extended-macosx105-i386.dmg"
  appcast 'https://sourceforge.net/projects/pure-data/rss?path=/pd-extended',
          checkpoint: '1cce97ff42748325b3ca1ae4dd873a866f04215cb6b2253e15fd5cf6211a33e8'
  name 'Pd-extended'
  homepage 'https://sourceforge.net/projects/pure-data/'

  app 'Pd-extended.app'

  postflight do
    set_permissions "#{appdir}/Pd-extended.app", 'u+w'
  end
end
