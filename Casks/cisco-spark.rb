cask :v1 => 'cisco-spark' do
  version :latest
  sha256 :no_check

  url 'https://download.ciscospark.com/mac/Spark.dmg'
  name 'Cisco Spark'
  homepage 'http://www.webex.com/projectsquared/'
  license :gratis
  tags :vendor => 'Cisco Systems'

  depends_on :macos => '>= :mavericks'

  app 'Spark.app'

  uninstall :signal => [
                        ['TERM', 'Cisco-Systems.Spark']
                       ]
  zap :delete => [
                   '~/Library/Preferences/Cisco-Systems.Spark.plist',
                   '~/Library/Caches/Cisco-Systems.Spark',
                   '~/Library/Logs/Spark',
                  ]
end
