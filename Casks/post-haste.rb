cask 'post-haste' do
  version '2.6,2601'
  sha256 'c90b4f231d61238e750cff1dfb6d7e7dbb25cfe9a9c1659d0a61dabeda99beab'

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.after_comma}"
  name 'Post Haste'
  homepage 'https://www.digitalrebellion.com/posthaste/'

  app 'Post Haste.app'

  zap delete: [
                '~/Library/Application Support/Digital Rebellion/Post Haste/',
                '~/Library/Preferences/com.digitalrebellion.PostHaste.plist',
              ],
      rmdir:  '~/Library/Application Support/Digital Rebellion'
end
