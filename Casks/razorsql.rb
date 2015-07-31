cask :v1 => 'razorsql' do
  version '6.3.25'
  sha256 'fddfa081ec121c80da51b2781ee14b235159f828ae4a04d81a5e23e1bea8b060'

  url "http://downloads.razorsql.com/downloads/#{version.gsub('.', '_')}/razorsql#{version.gsub('.', '_')}_x64.dmg"
  name 'RazorSQL'
  homepage 'http://razorsql.com/download_mac.html'
  license :commercial

  depends_on :macos => '>= :lion'
  depends_on :arch => :x86_64

  app 'RazorSQL.app'

  zap :delete => '~/.razorsql'
end
