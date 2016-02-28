cask 'quip' do
  version '4.5.13'
  sha256 'a8a7db6d32156d4d3a5acd43894ec6fda743688057da5eed3f5f2804afb806ff'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
