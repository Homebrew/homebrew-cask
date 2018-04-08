cask 'paintcode' do
  version '3.3.8'
  sha256 '070b9f220693fb195501449e68460f26114d2208b45473f51977567aec941396'

  # pixelcut.com/paintcode was verified as official when first introduced to the cask
  url "https://www.pixelcut.com/paintcode#{version.major}/paintcode.zip"
  appcast "https://www.pixelcut.com/paintcode#{version.major}/appcast.xml",
          checkpoint: 'c69924e71b543d06f24da680ebb621deabc29db6a8ef4f29b2025500765ce8e5'
  name 'PaintCode'
  homepage 'https://www.paintcodeapp.com/'

  app 'PaintCode.app'
end
