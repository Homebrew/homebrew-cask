cask 'pprows' do
  version '1.2.1'
  sha256 'ac8e3a1863eb66f262059578ea5ad56342f4feeb5edc69f5b6269d3f11e85698'

  url "https://github.com/jkpang/PPRows/releases/download/#{version}/PPRows-v#{version}.zip"
  appcast 'https://github.com/jkpang/PPRows/releases.atom'
  name 'PPRows'
  homepage 'https://github.com/jkpang/PPRows'

  app 'PPRows.app'

  zap trash: '~/Library/Preferences/com.jkpang.PPRows.plist'
end
