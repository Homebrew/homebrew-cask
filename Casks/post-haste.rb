cask 'post-haste' do
  version '2.5.8.0'
  sha256 '14b92628f6b53c6cddcfa8ae059a491af445d5c84a5fdef418899edee1c71c8d'

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.no_dots}"
  name 'Post Haste'
  homepage 'https://www.digitalrebellion.com/posthaste/'
  license :gratis

  app 'Post Haste.app'

  zap delete: [
                '~/Library/Application Support/Digital Rebellion/Post Haste/',
                '~/Library/Preferences/com.digitalrebellion.PostHaste.plist',
              ],
      rmdir:  '~/Library/Application Support/Digital Rebellion'
end
