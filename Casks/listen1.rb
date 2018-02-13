cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '1.2.2'
  sha256 '5f420bb15062ef77b0e3d7f57b729957acedff5d66f23945f941c293a324aa1b'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/listen1_mac_v#{version.no_dots}.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom',
          checkpoint: '897bf2723ca2742603b8aa0b734fcd55acd886e37a7be7e85a1a57237f9fae94'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
