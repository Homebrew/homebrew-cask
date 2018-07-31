cask 'fiscript' do
  version '1.0.1'
  sha256 '66c1dfb84573e57e5e614fb679c81aabf89b286020d20f8a3d40d2af2b05f6a2'

  url 'https://github.com/Mortennn/FiScript/releases/download/v1.0.1/FiScript.dmg'
  appcast 'https://github.com/Mortennn/FiScript/releases/download/v1.0.1/appcast.xml'
  name 'FiScript'
  homepage 'https://github.com/Mortennn/FiScript'

  depends_on macos: '>= :sierra'

  app 'FiScript.app'

  zap trash: ['~/Library/Application Scripts/com.Mortennn.FiScript', '~/Library/Application Scripts/com.Mortennn.FiScript.Finder-Extension', '~/Library/Containers/com.Mortennn.FiScript', '~/Library/Containers/com.Mortennn.FiScript.Finder-Extension', '~/Library/Group Containers/group.Mortennn.FiScript', '~/Library/Group Containers/sharedContainerID.container', '~/Library/Group\ Containers/group.Mortennn.FiScript']
end
