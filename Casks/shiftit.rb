cask 'shiftit' do
  version '1.6.5'
  sha256 'cadc68ddb7586e33f5404f993144c0234509cfb78a1f95f6b3e9033e224e9472'

  url "https://github.com/fikovnik/ShiftIt/releases/download/#{version}/ShiftIt-#{version}.zip"
  appcast 'https://github.com/fikovnik/ShiftIt/releases.atom',
          checkpoint: '575f49d7e67cfda3dce9a2518f7186747c92df02852de9a2831433ba5dfbacf0'
  name 'ShiftIt'
  homepage 'https://github.com/fikovnik/ShiftIt/'

  app 'ShiftIt.app'
end
