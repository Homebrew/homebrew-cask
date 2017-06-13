cask 'psychopy' do
  version '1.85.1'
  sha256 '6bf222b08cb6e88271226ccfa5c0c1cb25dd10fb44a4e5d2f9a684a867e4e237'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: 'd8606caabf407d77969cbc220b81052989868ea5cb1534d8b0b63d04d428bd32'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
