cask 'intensify-pro' do
  version '1.2.3_952'
  sha256 '147cc6db790e3ea6d7d51fbbcde5c27957cc4df24120b1ec79afde2d70d44dd5'

  # amazonaws.com/IntensifyCK was verified as official when first introduced to the cask
  url "https://creativekit.s3.amazonaws.com/IntensifyCK/IntensifyCK_Distribution_v#{version.dots_to_underscores}.zip"
  appcast 'https://cdn.macphun.com/updates/IntensifyPro/appcast.xml'
  name 'Intensify Pro'
  homepage 'https://macphun.com/intensify'

  app 'Intensify CK.app'
end
