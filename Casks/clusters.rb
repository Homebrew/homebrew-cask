cask 'clusters' do
  version '1.7.2'
  sha256 'da14d05b8aa824ce747038f1d14a82d71e02fb9dd0883ea2f9dfa32a3ca5e063'

  url "http://clustersapp.com/download/Clusters_#{version.major_minor}.dmg"
  appcast 'http://clustersapp.com/clusters_releases.xml'
  name 'Clusters'
  homepage 'http://clustersapp.com/'

  prefpane 'Clusters.prefPane'

  zap trash: [
               '~/Library/Application Support/Clusters',
               '~/Library/Preferences/com.latenitesoft.Clusters*',
             ]

  caveats do
    discontinued
  end
end
