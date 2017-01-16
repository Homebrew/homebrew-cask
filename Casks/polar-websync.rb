cask 'polar-websync' do
  version '2.9.2'
  sha256 '8fce20f3836d6a680845408b5793e2f6231122c4b6910ba18ad034a459fe6d15'

  # polarpersonaltrainer.com was verified as official when first introduced to the cask
  url "https://www.polarpersonaltrainer.com/downloads/websync_#{version}.dmg"
  name 'Polar WebSync Software'
  homepage 'https://support.polar.com/support/downloads/Polar_WebSync_Software'

  # cannot be installed automatically, because it presents a choice
  # See more: https://github.com/caskroom/homebrew-cask/pull/11040#issuecomment-100454926
  installer manual: 'Polar WebSync.pkg'

  uninstall pkgutil: 'fi.polar.websync.pkg',
            quit:    'fi.polar.WebSync',
            delete:  '/Applications/WebSync.app'
end
