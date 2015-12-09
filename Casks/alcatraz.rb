cask :v1 => 'alcatraz' do
  version '1.1.15'
  sha256 'a7b5e94db039d25474daa23466b436021e0d7f1d234c16e888141e61441d88be'

  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', :target => "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap :delete => '~/Library/Application Support/Alcatraz'
end
