cask :v1 => 'cloak' do
  version '2.0.13'
  sha256 '6ea76b4d92d3bb3fcebab8c752a9dc2e9ac4c562983540fcefd20858118d0e43'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          :sha256 => '9188560a42923aa393c1a9795fb7ecb252c50b63f363222022b2f972da68aa9e'
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
