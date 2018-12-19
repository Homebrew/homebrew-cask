cask 'post-haste' do
  version '2.6.4,2640'
  sha256 '94e4edd41e0ead7f06150bbd3ad257b562289146e89d33bfda1341b0c67768bf'

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
