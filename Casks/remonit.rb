cask :v1 => 'remonit' do
  version '0.2.0'
  sha256 'fb8e51c7d68d83274b2acff107e7ef4857d28c9daf4d5ac2599c14cb3d6516fe'

  url "http://874390f0461dc5bbf96b-8953e31051b5247f1143d89b1a42aa7d.r65.cf2.rackcdn.com/remonit-#{version}-mac.zip"
  homepage 'http://zef.io/remonit/'
  license :unknown    # todo: improve this machine-generated value

  app 'Remonit.app'
end
