cask 'smcfancontrol' do
  version '2.6'
  sha256 '7662058e618537eb466307e3b12e540b857e61392646a5b09df51bec9ad6da38'

  url "https://www.eidac.de/smcfancontrol/smcfancontrol_#{version.dots_to_underscores}.zip"
  appcast 'https://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          checkpoint: 'b39e3a345beddb5026f54e7cb9593c4eb7c83a3cb63de015d53c84c10f52bf26'
  name 'smcFanControl'
  homepage 'https://www.eidac.de/?cat=40'

  depends_on macos: '>= :lion'

  app 'smcFanControl.app'

  zap delete: [
                "~/Library/Caches/com.eidac.smcFanControl#{version.major}",
                '~/Library/Application Support/smcFanControl',
              ]
end
