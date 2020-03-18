cask 'ogdesign-eagle' do
  version '1.11.0'
  sha256 'c504887564465c996e2a1ed5dfa5220dcae70bc601aa2c1606c8306cfa7751aa'

  url "https://file.eagle.cool/releases/Eagle-#{version.before_comma}-build3.dmg"
  https://file.eagle.cool/releases/Eagle-#{version.before_comma}-build3.dmg
  appcast 'https://eagle.cool/changelog'
  name 'Eagle'
  homepage 'https://eagle.cool/macOS'

  app 'Eagle.app'
end
