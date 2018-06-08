cask 'activedock' do
  version '129,1527073906'
  sha256 'fb65006e8530d11a2a0250ca3d4c44d07a28820f12dda6ba9129f419681fed43'

  # dl.devmate.com/com.sergey-gerasimenko.ActiveDock was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.sergey-gerasimenko.ActiveDock/#{version.before_comma}/#{version.after_comma}/ActiveDock-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.sergey-gerasimenko.ActiveDock.xml',
          checkpoint: 'fcbe96ab0ebc6aa1ea795ef174d7f807b4ea0e7841646323e4f9e5fabf01a483'
  name 'ActiveDock'
  homepage 'http://www.noteifyapp.com/activedock/'

  app 'ActiveDock.app'
end
