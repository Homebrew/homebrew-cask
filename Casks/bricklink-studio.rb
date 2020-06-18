cask 'bricklink-studio' do
  version '2.1.5_10'
  sha256 'f5d36786aab7590f1415e15682047025718787027797e56d54d206b510345b27'

  # blstudio.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://blstudio.s3.amazonaws.com/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg"
  appcast 'https://bricklink.com/v3/studio/download.page'
  name 'Studio'
  homepage 'https://bricklink.com/v3/studio/download.page'

  auto_updates true

  pkg "Studio #{version.major}.0.pkg"

  uninstall pkgutil: "com.bricklink.pkg.Studio#{version.major}.0"

  zap trash: [
               '~/Library/Application Support/unity.BrickLink.Studio',
               '~/Library/Preferences/unity.BrickLink.Studio.plist',
               '~/Library/Preferences/unity.BrickLink.Patcher.plist',
               '~/Library/Caches/com.plausiblelabs.crashreporter.data/unity.BrickLink.Studio',
               '~/Library/Saved Application State/unity.BrickLink.Studio.savedState',
               '~/Library/Saved Application State/unity.BrickLink.Patcher.savedState',
             ]
end
