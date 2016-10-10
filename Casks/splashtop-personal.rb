cask 'splashtop-personal' do
  version '2.6.4.1'
  sha256 'df738c2067e99fac4aed16ab79b0a659aa0787ac6c68e195fab4e5d1c9f02820'

  # d17kmd0va0f0mp.cloudfront.net was verified as official when first introduced to the cask
  url "https://d17kmd0va0f0mp.cloudfront.net/macclient/STP/Splashtop_Personal_v#{version}.dmg"
  name 'Splashtop Personal'
  homepage 'http://www.splashtop.com/personal'

  pkg 'Splashtop Personal.pkg'

  uninstall pkgutil: 'com.splashtop.stp.*'
end
