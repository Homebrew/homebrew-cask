cask :v1 => 'stellarium' do
  version '0.13.1'
  sha256 '79f7835a799680c07a00dcb0687a135c8f61fd9e2f46978de069d5f1df631f44'

  url "https://downloads.sourceforge.net/sourceforge/stellarium/Stellarium-#{version}.dmg"
  homepage 'http://stellarium.org'
  license :oss

  app 'Stellarium.app'
end
