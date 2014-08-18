class Slic3r < Cask
  version '1.1.7'
  sha256 '41ae1c3c5ee7ddeb2431698b63f6e4112c68b830de9f024730388a1eb062f80b'

  url "http://dl.slic3r.org/mac/slic3r-osx-uni-#{version.gsub('.', '-')}-stable.dmg"
  homepage 'http://slic3r.org/'

  link 'Slic3r.app'
end
