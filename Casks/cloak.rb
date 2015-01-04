cask :v1 => 'cloak' do
  version '2.0.9'
  sha256 '18ebfe76aeee4da03546ed4969355202b7aec846b82bbea187dbc5891de35bb0'

  url "https://s3.amazonaws.com/static.getcloak.com/osx/updates/Release/Cloak-#{version}.dmg"
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
