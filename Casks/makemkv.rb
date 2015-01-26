cask :v1 => 'makemkv' do
  version '1.9.1'
  sha256 '15f476d52fa60c878469487dd654bbc1474d86490439d5e6327a8d39749a28de'

  url "http://www.makemkv.com/download/makemkv_v#{version}_osx.dmg"
  homepage 'http://www.makemkv.com/'
  license :freemium

  app 'MakeMKV.app'

  zap :delete => [
                 '~/Library/Preferences/com.makemkv.MakeMKV.plist',
                 '~/Library/Saved Application State/com.makemkv.MakeMKV.savedState',
                 ]
end
