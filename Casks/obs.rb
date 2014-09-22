class Obs < Cask
  version '0.5.1'
  sha256 'd1b6f787e169c33f7918962b50bf9e78c5afe49e47ffb8f7de9c1a1cb6ae9bf5'

  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/OBSMac-#{version}.zip"
  homepage 'http://obsproject.com/'

  app 'OBS.app'
end
