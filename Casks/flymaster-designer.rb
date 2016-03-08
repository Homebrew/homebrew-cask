cask 'flymaster-designer' do
  version :latest
  sha256 :no_check

  url 'http://downloads.flymaster.net/FmDesigner.dmg'
  name 'Flymaster Designer'
  name 'B2designer'
  homepage 'http://www.flymaster-avionics.com'
  license :gratis

  # Renamed for clarity: app name is inconsistent with its branding.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/9334
  app 'B2designer.app', target: 'Flymaster Designer.app'

  uninstall quit: 'net.flymaster.designer'
end
