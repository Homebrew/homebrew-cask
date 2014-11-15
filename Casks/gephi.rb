cask :v1 => 'gephi' do
  version '0.8.2-beta'
  sha256 'ee8f7845ade6109de7e88ed03cc92885c6d936c34d666503d7c92bf3c5d0659d'

  url "https://launchpad.net/gephi/0.8/0.8.2beta/+download/gephi-#{version}.dmg"
  homepage 'http://gephi.org/'
  license :unknown

  app 'Gephi.app'
end
