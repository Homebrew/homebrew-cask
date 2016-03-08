cask 'mediaelch' do
  version '2.4'
  sha256 '56697eaad8ee5000d83ee1c262abc381b4dae06b1352893b9223422167eb7744'

  url "http://www.kvibes.de/releases/mediaelch/#{version}/MediaElch-#{version}.dmg"
  name 'MediaElch'
  homepage 'http://www.kvibes.de/en/mediaelch/'
  license :gpl

  app 'MediaElch.app'
end
