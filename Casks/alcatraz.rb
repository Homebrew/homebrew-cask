cask 'alcatraz' do
  version '1.2.1'
  sha256 'afb4aca4274904293ec796239b59bc6143f47df6688e24527112041e68ac863b'

  # github.com/alcatraz/Alcatraz was verified as official when first introduced to the cask
  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom',
          checkpoint: '053f4ce6f085330611cfad0aacab07d2e3973233ff0b86881b22d0efee331914'
  name 'alcatraz'
  homepage 'http://alcatraz.io'

  artifact 'Alcatraz.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap delete: '~/Library/Application Support/Alcatraz'
end
