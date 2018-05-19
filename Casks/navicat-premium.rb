cask 'navicat-premium' do
  version '12.0.26'
  sha256 '5ea1823be5269b9e4838a3e5000143625db18828959afacb6356ab9461828cb2'

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20Premium",
          checkpoint: 'ad04b44679960dccae2d6922831e6da8437f6baa6e91812c1c8c21acd835d5c1'
  name 'Navicat Premium'
  homepage 'https://www.navicat.com/products/navicat-premium'

  app 'Navicat Premium.app'
end
