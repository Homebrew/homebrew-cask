cask 'alcatraz' do
  version '1.1.19'
  sha256 '90ec885112f72dc7f144ee346be518960bf7d287ace3f5440dda7ed5b2bab04c'

  # github.com/alcatraz/Alcatraz was verified as official when first introduced to the cask
  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom',
          checkpoint: '6b2506ad26e5fcfa49df433f2aeb1de009b1f60d441feac137cd4529065aec20'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap delete: '~/Library/Application Support/Alcatraz'
end
