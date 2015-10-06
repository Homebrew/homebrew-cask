cask :v1 => 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'https://s.icons8.com/download/Icons8App_for_Mac_OS.dmg'
  appcast 'https://icons8.com/icons8_cast',
          :sha256 => '15a63306379c70481dfbac8582ad9573b58a6d46c82e278521b8b2f63ae3e8b7'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8 App.app'
end
