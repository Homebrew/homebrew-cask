cask 'alcatraz' do
  version '1.2.0'
  sha256 '70a3b7bde9419142a386cbf54cc2df42fdfebcbac5780ec24fb3a945b88e7020'

  # github.com/alcatraz/Alcatraz was verified as official when first introduced to the cask
  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom',
          checkpoint: 'f2be998ba5e84649988901bab2ffa1b35a6472aa8091a63471fe30a7431347fb'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap delete: '~/Library/Application Support/Alcatraz'
end
