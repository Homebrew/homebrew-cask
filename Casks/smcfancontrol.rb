cask 'smcfancontrol' do
  version '2.6'
  sha256 '7662058e618537eb466307e3b12e540b857e61392646a5b09df51bec9ad6da38'

  url "https://www.eidac.de/smcfancontrol/smcfancontrol_#{version.dots_to_underscores}.zip"
  appcast 'https://www.eidac.de/smcfancontrol/smcfancontrol.xml',
          checkpoint: 'bc7b8543fabb7f80e378ea1f24a1559fea3717a4835248ab9b82b3b6ac41e5de'
  name 'smcFanControl'
  homepage 'https://www.eidac.de/?cat=40'

  depends_on macos: '>= :lion'

  app 'smcFanControl.app'

  zap trash: [
               '~/Library/Application Support/smcFanControl',
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eidac.smcfancontrol#{version.major}.sfl*",
               "~/Library/Caches/com.eidac.smcFanControl#{version.major}",
             ]
end
