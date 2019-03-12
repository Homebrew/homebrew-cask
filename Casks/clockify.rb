cask 'clockify' do
  version '2.2.4_59'
  sha256 'e2e4804a259dc49f15be62017ce519725ee633dd3d6be5511515b1c342addad0'

  url "https://clockify.me/downloads/ClockifyDesktop_#{version.no_dots}.zip"
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  app 'Clockify Desktop.app'
end
