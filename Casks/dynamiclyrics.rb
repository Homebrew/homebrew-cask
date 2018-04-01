cask 'dynamiclyrics' do
  version '2.1.1320'
  sha256 'eb00070104a441561482144ab6cb9a7de60b7a82e58db1329c813087b61afad6'

  url "http://dl.martianz.cn/dynamiclyrics/DynamicLyricsBuild#{version.sub(%r{^.*\.}, '')}.zip"
  name 'DynamicLyrics'
  homepage 'https://martianz.cn/dynamiclyrics/'

  app 'DynamicLyrics.app'
end
