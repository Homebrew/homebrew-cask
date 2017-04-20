cask 'arturia-mini-v' do
  version '2.7.0.76'
  sha256 '872df33f4dd685525660cdb8b7ac65da7c4c40b9b15a2e7df5b772cd67b853fd'

  url "https://downloads.arturia.com/products/mini-v/soft/Mini_V2_#{version.dots_to_underscores}.pkg"
  name 'Arturia Mini V'
  homepage 'http://www.arturia.com/products/analog-classics/mini-v/overview'
  license :commercial

  pkg "Mini_V2_#{version.dots_to_underscores}.pkg"
end
