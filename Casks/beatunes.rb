cask :v1 => 'beatunes' do
  version '4.0.24'
  sha256 '33a0e98d42ce3ec7580912caaa165f1af2b927a28eb07bfaaf88981d617fe127'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.gsub('.','-')}-osx.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'
  license :closed

  app 'beaTunes4.app'
end
