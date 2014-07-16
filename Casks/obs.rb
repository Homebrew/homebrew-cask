class Obs < Cask
  version '0.4.0'
  sha256 '57f0d0f79fd6d8fd098cb7f3f0ae999b131bd591f28eaa54b82242918708132a'

  url "https://github.com/jp9000/obs-studio/releases/download/#{version}/OBSMac-#{version}.zip"
  homepage 'http://obsproject.com/'

  link 'OBS.app'
end
