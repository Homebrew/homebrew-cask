cask :v1 => 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  url 'https://s.icons8.com/download/Icons8App_for_Mac_OS.dmg'
  appcast 'https://icons8.com/icons8_cast',
          :sha256 => 'd12d6eaeef140a4ad9e0801fb4ffba7765f2b40de786115d40526a9523809d2e'
  name 'Icons8 App'
  homepage 'https://icons8.com/'
  license :freemium

  app 'Icons8 App.app'
end
