cask 'eloquent' do
  version '2.6.3'
  sha256 'ca0a09edd3af6da49dc34f79ef058949e92e0048f451a83547b4c8e88f455c11'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap trash: [
               '~/Library/Application Support/Eloquent',
               '~/Library/Caches/org.crosswire.Eloquent',
               '~/Library/Logs/Eloquent.log',
             ]
end
