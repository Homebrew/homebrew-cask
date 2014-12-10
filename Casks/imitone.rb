cask :v1 => 'imitone' do
  version '0.6.1a'
  sha256 '5149fdd4bc4be96068ba5494b7ddcb47e07d84fd1c37c071baccbeb714c37b51'

  url "http://imitone.com/beta/imitone-#{version}.dmg"
  homepage 'http://imitone.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'imitone.app'
end
