cask 'flowsync' do
  version '2.6.4'
  sha256 '6a5c3d76b969cfc48c2adb26149e7911fafc1f1ae0b860f72db107e773b072ba'

  # dngo5v6w7xama.cloudfront.net was verified as official when first introduced to the cask
  url "https://dngo5v6w7xama.cloudfront.net/connect/download/FlowSync_#{version}.pkg"
  name 'Polar FlowSync Software'
  homepage 'https://support.polar.com/uk-en/support/flowsync'
  license :closed

  pkg "FlowSync_#{version}.pkg"

  uninstall pkgutil: "FlowSync_#{version}.pkg",
            quit:    'fi.polar.FlowSync',
            delete:  '/Applications/FlowSync.app'
end
