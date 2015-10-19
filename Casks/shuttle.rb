cask :v1 => 'shuttle' do
  version '1.2.4'
  sha256 '8313eea24e94346878bf84e58691c665be30d529fd259703c0c25a4b7f854d79'

  url "https://github.com/fitztrev/shuttle/releases/download/#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap :delete => '~/.shuttle.json'
end
