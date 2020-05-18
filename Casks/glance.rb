cask 'glance' do
  version '1.0.0'
  sha256 '8ef7ba4a5130955e213fdfcc2bf43cba47c742d5f02e0e9c62405acaf19626b5'

  url "https://github.com/samuelmeuli/glance/releases/download/v#{version}/Glance.dmg"
  appcast 'https://github.com/samuelmeuli/glance/releases.atom'
  name 'Glance'
  homepage 'https://github.com/samuelmeuli/glance'

  depends_on macos: '>= :catalina'

  app 'Glance.app'

  zap trash: [
               '~/Library/Application\ Scripts/com.samuelmeuli.Glance/',
               '~/Library/Application\ Scripts/com.samuelmeuli.Glance.QLPlugin/',
               '~/Library/Containers/com.samuelmeuli.Glance/',
               '~/Library/Containers/com.samuelmeuli.Glance.QLPlugin/',
               '~/Library/Group\ Containers/group.com.samuelmeuli.glance/',
             ]

  caveats <<~EOS
    You must start #{appdir}/Glance.app once manually to setup the QuickLook plugin.
  EOS
end
