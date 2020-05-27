cask 'bricklink-studio' do
  version '2.1.4_2'
  sha256 'f63a924d4f0349322e298c68691ce080046995c59b8dfa02d803a3af03bf0a1b'

  # s3.amazonaws.com/blstudio/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/blstudio/Studio#{version.major}.0/Archive/#{version}/Studio+#{version.major}.0.pkg"
  appcast 'https://www.bricklink.com/v3/studio/download.page'
  name 'Studio'
  homepage 'https://www.bricklink.com/v3/studio/download.page'

  pkg "Studio+#{version.major}.0.pkg"

  uninstall pkgutil: "com.bricklink.pkg.Studio#{version.major}.0"
end
