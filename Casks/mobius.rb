cask 'mobius' do
  version '2.5'
  sha256 '7b2d1951c4d8025d47a4062350774636b6b3c07ec36b269338bb74e3637d8afb'

  url "http://www.circularlabs.com/Mobius%20#{version}.pkg"
  name 'Mobius'
  homepage 'http://www.circularlabs.com'

  pkg "Mobius #{version}.pkg"

  uninstall quit:    'circularlabs.mobius',
            pkgutil: [
                       'com.circularlabs.mobius2.ApplicationSupport.pkg',
                       'com.circularlabs.mobius2.Mobius2-1.pkg',
                       'com.circularlabs.mobius2.Mobius2-2.pkg',
                       'com.circularlabs.mobius2.Mobius2.pkg',
                       'com.circularlabs.mobius2.osc.pkg',
                     ]

  zap delete: [
                '/Library/Audio/Plug-Ins/Components/Mobius 2.component',
                '/Library/Audio/Plug-Ins/VST/Mobius 2.vst',
                '/Library/Application Support/Mobius 2',
              ]
end
