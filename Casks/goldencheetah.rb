cask 'goldencheetah' do
  version '3.4,3957:551'
  sha256 'd618a3a1a8c941774830057ed131c2bba3dae3879150580a161c378a1e3fdc09'

  # github.com/GoldenCheetah/GoldenCheetah was verified as official when first introduced to the cask
  url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V3.4/GoldenCheetah_V#{version.major_minor}_build_#{version.after_comma.before_colon}_Qt#{version.after_colon}_64bit.dmg"
  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom',
          checkpoint: '9989aa51d87df94e902f239cd8bfb17aaeeb328034a5fc0948e79439caa4a26e'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'

  app 'GoldenCheetah.app'
end
