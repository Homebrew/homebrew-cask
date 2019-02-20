cask 'smcfancontrol' do
  version '2.6.1'
  sha256 'ed6dcee1cff9cff3def1b9d98c7bb868b12b9e26205f81915a95187e0d4ed826'

  url "https://www.eidac.de/smcfancontrol/smcfancontrol_#{version.dots_to_underscores}.zip"
  appcast 'https://www.eidac.de/smcfancontrol/smcfancontrol.xml'
  name 'smcFanControl'
  homepage 'https://www.eidac.de/?cat=40'

  app 'smcFanControl.app'

  zap trash: [
               '~/Library/Application Support/smcFanControl',
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eidac.smcfancontrol#{version.major}.sfl*",
               "~/Library/Caches/com.eidac.smcFanControl#{version.major}",
             ]
end
