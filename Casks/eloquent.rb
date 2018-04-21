cask 'eloquent' do
  version '2.6.1'
  sha256 'd5b8f47385f9ba0e82e7c8de28b74e514ec480ed886be65e6415b58c660ea215'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom',
          checkpoint: 'af722d9c7f36969824627d4f7d4555616681f429f044d97bf9c2f041bb234df2'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap trash: [
               '~/Library/Application Support/Eloquent',
               '~/Library/Caches/org.crosswire.Eloquent',
               '~/Library/Logs/Eloquent.log',
             ]
end
