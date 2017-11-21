cask 'mcrl2' do
  version '201707.1'
  sha256 '22b5cc7d161de36c3dec6234d3b45e479080238cabe3553cb0441d3a736a117a'

  url "http://www.mcrl2.org/download/release/mcrl2-#{version}_x86_64.dmg"
  name 'mCRL2'
  homepage 'http://www.mcrl2.org/'

  app 'mCRL2.app'
  binary "#{appdir}/mCRL2.app/Contents/bin/mcrl2i"
end
