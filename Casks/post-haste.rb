cask 'post-haste' do
  version '2.6.3,2630'
  sha256 'effe6fd53599e039dcc9b636cf6f0c09c72edbc1f2913213a426a762a079f60d'

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.after_comma}"
  name 'Post Haste'
  homepage 'https://www.digitalrebellion.com/posthaste/'

  depends_on macos: '>= :mountain_lion'

  app 'Post Haste.app'

  zap trash: [
               '~/Library/Application Support/Digital Rebellion/Post Haste/',
               '~/Library/Preferences/com.digitalrebellion.PostHaste.plist',
             ],
      rmdir: '~/Library/Application Support/Digital Rebellion'
end
