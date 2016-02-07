cask 'quip' do
  version '4.4'
  sha256 'ce1e192a74faaf19990db00bbe224217ea59f172abefe8b39259c7e3c04d4042'

  # cloudfront.net is the official download host per the vendor homepage
  url "https://d2i1pl9gz4hwa7.cloudfront.net/macosx_#{version}.dmg"
  name 'Quip'
  homepage 'https://quip.com/'
  license :gratis

  app 'Quip.app'
end
