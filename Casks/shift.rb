cask 'shift' do
  version '4.0.28'
  sha256 '95142435a998148050282cf5a1f36937ea4e6386f1c137ae79b894afa3e9c332'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
