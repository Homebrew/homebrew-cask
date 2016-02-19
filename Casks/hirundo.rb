cask 'hirundo' do
  version '0.8.4'
  sha256 'c4e7e9d0d699776bb497312d63e0c12bacde4e11c4317505f243ff9351915890'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo-#{version}.tgz"
  appcast 'https://stylemac.com/hirundo/versions/current.json',
          checkpoint: 'fee92e8ac7d73014d177cc23740c872c504cae9021ebd2eae19033ffab7f43c1'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'
  license :gratis

  app 'Hirundo.app'
end
