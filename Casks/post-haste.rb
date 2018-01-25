cask 'post-haste' do
  version '2.6.1,2610'
  sha256 '935b89c608765a144bc9f3c472a6960032904ee5cc09963fdbb93953a5428453'

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.after_comma}"
  name 'Post Haste'
  homepage 'https://www.digitalrebellion.com/posthaste/'

  app 'Post Haste.app'

  zap trash: [
               '~/Library/Application Support/Digital Rebellion/Post Haste/',
               '~/Library/Preferences/com.digitalrebellion.PostHaste.plist',
             ],
      rmdir: '~/Library/Application Support/Digital Rebellion'
end
