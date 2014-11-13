cask :v1 => 'detune' do
  version '1.0.8'
  sha256 '2e3a422ea8b41fcc862a8c725ee9eecfb307398b636397d458b47ec0384ab0a1'

  url "http://headlightsoft.com/detune/detune-#{version}.dmg"
  homepage 'http://headlightsoft.com/detune/'
  license :unknown

  app 'DeTune.app'
end
