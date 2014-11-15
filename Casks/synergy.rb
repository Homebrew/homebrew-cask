cask :v1 => 'synergy' do
  version '1.5.1-r2398'
  sha256 'd787031705b0123d36f07e7639fd8882d1969bc8f7ddad25a3326c873385dfe2'

  url "https://synergy-project.org/files/packages/synergy-#{version}-MacOSX109-x86_64.dmg"
  homepage 'http://synergy-foss.org/'
  license :unknown

  app 'Synergy.app'
end
