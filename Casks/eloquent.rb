cask 'eloquent' do
  version '2.6.0'
  sha256 '759fce0eb74900858e9eb8146f515f9fc05fa1e519708576f9322f13164261d2'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom',
          checkpoint: '192dd4e82b93dc6cbbc7a5206f304694358e957d69aac610323174489df160b4'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap trash: [
               '~/Library/Application Support/Eloquent',
               '~/Library/Caches/org.crosswire.Eloquent',
               '~/Library/Logs/Eloquent.log',
             ]
end
