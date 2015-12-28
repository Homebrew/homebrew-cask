cask 'inform' do
  version '6M62'
  sha256 '6fd0442a4b64a66ee27f0d09caf27bcc117737bd997653b94e8404ef7795f963'

  url "http://inform7.com/download/content/#{version}/I7-#{version}-OSX.dmg"
  name 'Inform'
  homepage 'http://inform7.com/'
  license :oss

  app 'Inform.app'
end
