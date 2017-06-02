cask 'leanote' do
  version '2.5'
  sha256 'c309051728fcc99519556d95ff7b4685aaa701e06dcd058fa544877bdd708e4a'

  # sourceforge.net/leanote-desktop-app was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/leanote-desktop-app/#{version}/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://sourceforge.net/projects/leanote-desktop-app/rss?path=/',
          checkpoint: '4b74a02e2d34988d94a9df01af233f97057c2ef639e02c88d9aeebfaa3646941'
  name 'Leanote'
  homepage 'http://leanote.org/'

  app 'Leanote.app'
end
