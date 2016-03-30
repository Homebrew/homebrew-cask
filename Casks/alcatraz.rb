cask 'alcatraz' do
  version '1.1.18'
  sha256 'ac76e9db045099cf87e24c9a29b69bf64952d2681bb1c45a9f7eb677b8c69cd2'

  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom',
          checkpoint: '0c5cc9b751a09bc2dacee65b80a328b4e73782c6853cabd97be6913accfb0317'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap delete: '~/Library/Application Support/Alcatraz'
end
