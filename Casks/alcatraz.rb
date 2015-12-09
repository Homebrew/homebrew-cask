cask :v1 => 'alcatraz' do
  version '1.1.15'
  sha256 'e28bfd9fcc22cdfde0c7c8f31e3468a4847e7bda9cb69f309f24257eee3dd41'

  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', :target => "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap :delete => '~/Library/Application Support/Alcatraz'
end
