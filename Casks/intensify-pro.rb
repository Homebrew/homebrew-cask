cask 'intensify-pro' do
  version '1.2.3_952'
  sha256 '147cc6db790e3ea6d7d51fbbcde5c27957cc4df24120b1ec79afde2d70d44dd5'

  # amazonaws.com/IntensifyCK was verified as official when first introduced to the cask
  url "https://creativekit.s3.amazonaws.com/IntensifyCK/IntensifyCK_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'http://cdn.macphun.com/updates/IntensifyPro/appcast.xml',
          checkpoint: 'dd6bc7a7e2b41782984ed47a7e4edc7af2898990bbdd5b9c61f85f6d63523ab0'
  name 'Intensify Pro'
  homepage 'http://macphun.com/intensify'

  app 'Intensify CK.app'
end
