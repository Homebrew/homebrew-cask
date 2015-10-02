cask :v1 => 'iterm2' do
  # note: "2" is not a version number, but indicates a different vendor
  version '2.1.3'
  sha256 'f801d54d4dd49ba137fe0d9d5f50ced1916ab01766f4fa3c6132230ce8f3a52b'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.gsub('.','_')}.zip"
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  appcast 'https://iterm2.com/appcasts/final.xml',
          :sha256 => '02877596124c999d6e8783d634ed7970864094f4acc450ed34e31cf77dedcef1'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
