cask 'notable' do
  version '1.7.3'
  sha256 '40740ab18fe83ecaa952b248c18cd6ad790726a54faa8f4860f6236b2757d4f1'

  url "https://github.com/notable/notable/releases/download/v#{version}/Notable-#{version}.dmg"
  appcast 'https://github.com/notable/notable/releases.atom'
  name 'Notable'
  homepage 'https://github.com/notable/notable'

  app 'Notable.app'
end
