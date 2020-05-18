cask 'glance' do
  version '1.1.0'
  sha256 'bd14584dd7f81fa13217e02f6d6cbdc24344f553059abc7dc2d037e54680fbdb'

  url "https://github.com/samuelmeuli/glance/releases/download/v#{version}/Glance.dmg"
  appcast 'https://github.com/samuelmeuli/glance/releases.atom'
  name 'Glance'
  homepage 'https://github.com/samuelmeuli/glance'

  depends_on macos: '>= :catalina'

  app 'Glance.app'

  zap trash: [
               '~/Library/Application Scripts/com.samuelmeuli.Glance',
               '~/Library/Application Scripts/com.samuelmeuli.Glance.QLPlugin',
               '~/Library/Containers/com.samuelmeuli.Glance',
               '~/Library/Containers/com.samuelmeuli.Glance.QLPlugin',
               '~/Library/Group Containers/group.com.samuelmeuli.glance',
             ]

  caveats <<~EOS
    You must start #{appdir}/Glance.app once manually to setup the QuickLook plugin.
  EOS
end
