cask :v1 => 'lightworks' do
  version '12.0.2'
  sha256 '6d58dbc46981bd8f8e109f77ceb3605fda8af075d1411975950b2d30bbde590b'

  url "http://www.lwks.com/dmpub/lightworks_v#{version}.dmg"
  name 'Lightworks'
  homepage 'http://www.lwks.com'
  license :freemium

  app 'Lightworks.app'

  depends_on :macos => '>= 10.8'
end
