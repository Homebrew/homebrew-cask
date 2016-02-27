cask 'alcatraz' do
  version '1.1.16'
  sha256 '7733bccb7af18f4e2092f0fbd9370b8082a24550521956b08935e7834e4493ee'

  url "https://github.com/alcatraz/Alcatraz/releases/download/#{version}/Alcatraz.tar.gz"
  appcast 'https://github.com/alcatraz/Alcatraz/releases.atom',
          checkpoint: '5d0705177737f6b9d875c0b7fe91797177286f60db76b5ed513a973862bbb066'
  name 'alcatraz'
  homepage 'http://alcatraz.io'
  license :mit

  artifact 'Alcatraz.xcplugin', target: "#{ENV['HOME']}/Library/Application Support/Developer/Shared/Xcode/Plug-ins/Alcatraz.xcplugin"

  zap delete: '~/Library/Application Support/Alcatraz'
end
