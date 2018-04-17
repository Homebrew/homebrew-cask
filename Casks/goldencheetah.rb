cask 'goldencheetah' do
  version '3.4,3957:551'
  sha256 'd618a3a1a8c941774830057ed131c2bba3dae3879150580a161c378a1e3fdc09'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V3.4/GoldenCheetah_V#{version.major_minor}_build_#{version.after_comma.before_colon}_Qt#{version.after_colon}_64bit.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom',
          checkpoint: '3bcf97f4be2aad76e915db03c070cf86a2812278921d043fec5129109ed95461'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'

  depends_on macos: '>= :lion'

  app 'GoldenCheetah.app'
end
