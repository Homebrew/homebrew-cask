cask :v1 => 'alcatraz' do
  version '1.1.13'
  sha256 'be5484b4571dedcceda25908daba70ba1cee85ce71e5b4a5172dac6ee4246a7e'

  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', :target => "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap :delete => '~/Library/Application Support/Alcatraz'
end
