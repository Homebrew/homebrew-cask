cask :v1 => 'kylo' do
  version '1.0.1.76141'
  sha256 '5c5f1c3aedba9aa2807cffbc3aec448f0f51e16e1039c0314cf6394ddbe391b1'

  url "https://kylo.s3.amazonaws.com/update/public/kylo-setup-#{version.gsub('.','_')}.dmg"
  homepage 'http://kylo.tv'
  license :unknown

  app 'Kylo.app'
end
