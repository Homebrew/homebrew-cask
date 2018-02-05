cask 'supercollider' do
  version '3.9.0'
  sha256 '3a28058587cc849488e8023132bed58f0e4220fc87e8996012824e1af26483fa'

  # github.com/supercollider/supercollider was verified as official when first introduced to the cask
  url "https://github.com/supercollider/supercollider/releases/download/Version-#{version}/SuperCollider-#{version}-macOS.zip"
  appcast 'https://github.com/supercollider/supercollider/releases.atom',
          checkpoint: '581d5c9caac55fc65eca7ab9ba1b3153545f3e0122b67d4c49a66f6ac3a88811'
  name 'SuperCollider'
  homepage 'https://supercollider.github.io/'

  app 'SuperCollider/SuperCollider.app'
end
