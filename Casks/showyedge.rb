cask 'showyedge' do
  version '3.0.0'
  sha256 '4a6b16970cb77a9b3e77031e74cf8907a09106ffff1e430eec9c41790579008c'

  url "https://pqrs.org/osx/ShowyEdge/files/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml',
          :sha256 => '4c126ea5665cbf1dbf928d6fbc25f0630719908f321a7ead3eaca0b64274d93c'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'
  license :public_domain

  app 'ShowyEdge.app'
end
