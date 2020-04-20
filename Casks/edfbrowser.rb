cask 'edfbrowser' do
  version '1.74,04a7ca44345f889cc84b1c0d33732a58'
  sha256 '70a5728eacacd45c7d6a5bd956687f3ccef8907c713521f4d341ba951505fd1d'

  # gitlab.com/whitone/EDFbrowser/ was verified as official when first introduced to the cask
  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.after_comma}/EDFbrowser-#{version.before_comma}.dmg"
  appcast 'https://gitlab.com/whitone/EDFbrowser/-/tags?format=atom'
  name 'EDFbrowser'
  homepage 'https://www.teuniz.net/edfbrowser'

  app 'EDFbrowser.app'
end
