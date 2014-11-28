cask :v1 => 'dynamiclyrics' do
  version '2.1.1320'
  sha256 'eb00070104a441561482144ab6cb9a7de60b7a82e58db1329c813087b61afad6'

  url "http://martianlaboratory.com/dynamiclyrics/DynamicLyricsBuild#{version.sub(%r{^.*\.},'')}.zip"
  homepage 'http://martianz.cn/dynamiclyrics/'
  appcast 'http://martianlaboratory.com/dynamiclyrics/update.xml',
          :sha256 => '104bf5fbe3dfa7bd383133bf1e0d01b88896030d1bb6ffa8854141e73ec8a229'
  license :oss

  app 'DynamicLyrics.app'
end
