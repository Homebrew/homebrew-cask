cask 'clusters' do
  version '1.7.2'
  sha256 'da14d05b8aa824ce747038f1d14a82d71e02fb9dd0883ea2f9dfa32a3ca5e063'

  url "http://clustersapp.com/download/Clusters_#{version.major_minor}.dmg"
  appcast 'http://clustersapp.com/clusters_releases.xml',
          checkpoint: 'e6833dc630494764aed0331f43210978f7c753b7c2b11716e50ad83d18f1ac06'
  name 'Clusters'
  homepage 'http://clustersapp.com/'
  license :commercial

  prefpane 'Clusters.prefPane'

  zap delete: [
                '~/Library/Application Support/Clusters',
                '~/Library/Preferences/com.latenitesoft.Clusters*',
              ]
end
