cask 'edfbrowser' do
  version '1.73,c0e3d267ed183574364cd5560eeba06f'
  sha256 '6667e37cebbaa749ade461a3b717f00872dc747969c7ce21c484573a69b27e90'

  # gitlab.com/whitone/EDFbrowser was verified as official when first introduced to the cask
  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.after_comma}/EDFbrowser-#{version.before_comma}.dmg"
  appcast 'https://gitlab.com/whitone/EDFbrowser/-/tags?format=atom'
  name 'EDFbrowser'
  homepage 'https://www.teuniz.net/edfbrowser'

  app 'EDFbrowser.app'
end
