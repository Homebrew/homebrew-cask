cask 'focused' do
  version '3.1,1817:1508267199'
  sha256 'c59d98631f8d4fcc15682b735ed0dc4e2991c52688168692c2fee5c8f55fb2c5'

  # devmate.com/com.71squared.focused was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.71squared.focused/#{version.after_comma.before_colon}/#{version.after_colon}/Focused-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.71squared.focused.xml'
  name 'Focused'
  homepage 'https://codebots.co.uk/'

  app 'Focused.app'
end
