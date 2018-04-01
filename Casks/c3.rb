cask 'c3' do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version '0.6.18.8668'
  sha256 'c36d5e08cdad3695dcd2ba933ef51e1091bc6c3ec4bb7dcefae012f6f77c37ff'

  # d2xj26462na9l3.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2xj26462na9l3.cloudfront.net/c3/C3-Voice_Chat-#{version}.dmg"
  name 'C3'
  homepage 'https://www.downloadc3.com/'

  app 'c3.app'
end
