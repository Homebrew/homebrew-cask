cask 'eiskaltdcpp' do
  version '2.2.10-569-macOS10.12'
  sha256 '94b2214cd36179752d8e944d143af33248dc62f8dcfdac9023349d4b2e60eddd'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
