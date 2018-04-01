cask 'qlnetcdf' do
  version '0.0.3'
  sha256 'a02db25dab9795d75fb13a155c465678f940a3586d7a0521cc7005590bf9898a'

  url "https://github.com/tobeycarman/QLNetcdf/releases/download/v#{version}/QLNetcdf.qlgenerator.zip"
  appcast 'https://github.com/tobeycarman/QLNetcdf/releases.atom',
          checkpoint: '7c740b9f525ca02adbc378effabef207df7859e5dbc70f5aa375fa18503bf4bc'
  name 'QLNetcdf'
  homepage 'https://github.com/tobeycarman/QLNetcdf/'

  qlplugin 'QLNetcdf.qlgenerator'
end
