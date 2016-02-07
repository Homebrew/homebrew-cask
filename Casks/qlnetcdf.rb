cask 'qlnetcdf' do
  version '0.0.3'
  sha256 'a02db25dab9795d75fb13a155c465678f940a3586d7a0521cc7005590bf9898a'

  url "https://github.com/tobeycarman/QLNetcdf/releases/download/v#{version}/QLNetcdf.qlgenerator.zip"
  appcast 'https://github.com/tobeycarman/QLNetcdf/releases.atom',
          checkpoint: '1f462ff39ea0307daf5aee204f2fdf3cd527b08b6fe127f07864fc8bde34a921'
  name 'QLNetcdf'
  homepage 'https://github.com/tobeycarman/QLNetcdf/'
  license :mit

  qlplugin 'QLNetcdf.qlgenerator'
end
