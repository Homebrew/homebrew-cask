cask 'robofont' do
  version '1.8.4,1706131209'
  sha256 '2a594edfe6fd376a84b7aabc1734e75afb4e9f0a1df9e07afdfb1afebd7f2322'

  url "http://robofont.com/downloads/RoboFont_#{version.after_comma}.dmg"
  appcast 'http://doc.robofont.com/version-history/',
          checkpoint: '4c873452fed5d8b3ba9e9d533bd6f5395d520a77dca0284bcd8af7becae27136'
  name 'RoboFont'
  homepage 'http://doc.robofont.com/'

  depends_on macos: '>= :mavericks'

  app 'RoboFont.app'
end
