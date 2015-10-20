cask :v1 => 'goldencheetah' do
  version '3.2.0'

  if Hardware::CPU.is_32_bit?
    sha256 'db408f128ed4e7f20f122d2f6e92cad2accc9b145825e5658b37662db1f64cbe'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version.to_f}/GoldenCheetah_#{version}_QT4_32bit.dmg"
  else
    sha256 '77a4dc1e73af42390b8eee94646a81a8990e11302fe1b70f50e48ad26c678f49'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/GoldenCheetah/GoldenCheetah/releases/download/V#{version.to_f}/GoldenCheetah_#{version}_QT5_64bit.dmg"
  end

  appcast 'https://github.com/GoldenCheetah/GoldenCheetah/releases.atom'
  name 'GoldenCheetah'
  homepage 'http://www.goldencheetah.org/'
  license :gpl

  app 'GoldenCheetah.app'
end
