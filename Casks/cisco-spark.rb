cask 'cisco-spark' do
  version :latest
  sha256 :no_check

  url 'https://download.ciscospark.com/mac/Spark.dmg'
  name 'Cisco Systems Spark'
  homepage 'https://www.webex.com/projectsquared/'
  license :gratis

  depends_on macos: '>= :mavericks'

  app 'Spark.app'

  uninstall signal: [
                      ['TERM', 'Cisco-Systems.Spark'],
                    ]

  zap delete: [
                '~/Library/Preferences/Cisco-Systems.Spark.plist',
                '~/Library/Caches/Cisco-Systems.Spark',
                '~/Library/Logs/Spark',
              ]
end
