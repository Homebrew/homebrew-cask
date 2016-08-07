cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.0.5'
  sha256 'a0081635383a7a1eda12c99c2800979168bfa757b737b0b15a2639bdb2ce6f95'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '080d6081333679f3f93bb8fbd04fe85fcfab9bd84970baf776861f181b688da4'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
