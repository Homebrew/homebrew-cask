cask 'showyedge' do
  version '3.2.0'
  sha256 '6f75e950dc401794f89be596b9467547c570e8e7c9c499335b269218f645f6f1'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          checkpoint: 'e3f83793b5d2280e82634e23f23d6cdf6798976e49014ef043831464060c93dd'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
