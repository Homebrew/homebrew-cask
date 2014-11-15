cask :v1 => 'freemind' do
  version '1.0.1'
  sha256 '0bd93317567f947e7fa3b3e8d2e0d908300642edc5e07f1929157469ffd14ea3'

  url "https://downloads.sourceforge.net/project/freemind/freemind/#{version}/FreeMind_#{version}.dmg"
  homepage 'freemind.sourceforge.net'
  license :oss

  app 'FreeMind.app'
end
