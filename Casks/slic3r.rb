class Slic3r < Cask
  version '1.1.6'
  sha256 '544cb36ff905d32790f66c3872b0806e6854f5214fa38fd705afbb610a5f718f'

  url "http://dl.slic3r.org/mac/slic3r-osx-uni-#{version.gsub('.', '-')}-stable.dmg"
  homepage 'http://slic3r.org/'

  link 'Slic3r.app'
end
