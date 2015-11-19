cask :v1 => 'alcatraz' do
  version '1.1.12'
  sha256 '5a1ae98df16bf56df164151b09a64cd5e194f7f716e2a10800366cacc9db2e0b'

  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', :target => "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap :delete => '~/Library/Application Support/Alcatraz'
end
