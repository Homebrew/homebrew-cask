cask :v1 => 'cloak' do
  version '2.0.15'
  sha256 '0ca2dd7ac96807b7e374a94be25fd3d3d22b516f116a83678fe5c65d288ef32f'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => '9188560a42923aa393c1a9795fb7ecb252c50b63f363222022b2f972da68aa9e'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
