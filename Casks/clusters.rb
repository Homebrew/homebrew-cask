cask :v1 => 'clusters' do
  version '1.7.2'
  sha256 'da14d05b8aa824ce747038f1d14a82d71e02fb9dd0883ea2f9dfa32a3ca5e063'

  url "http://latenitesoft.com/clusters/download/Clusters_#{version.to_f}.dmg"
  appcast 'http://clustersapp.com/clusters_releases.xml',
          :sha256 => 'bc22256e42106e6cc703e54f5b596e6c2ccdbd64760e63e39b04fb51db4d11c0'
  name 'Clusters'
  homepage 'http://latenitesoft.com/clusters'
  license :commercial

  prefpane 'Clusters.prefPane'

  zap :delete => [
                  '~/Library/Application Support/Clusters',
                  '~/Library/Preferences/com.latenitesoft.Clusters*'
                 ]
end
