cask :v1 => 'aptanastudio' do
  version '3.6.0'
  sha256 'd2207934d485cca10d6ad624a67d9f21c1bef46e0a9d58a9db334cec7fb55948'

  url "http://download.aptana.com/studio3/standalone/#{version}/mac/Aptana_Studio_3_Setup_#{version}.dmg"
  homepage 'http://www.aptana.com/'
  license :unknown

  app 'Aptana Studio 3/AptanaStudio3.app'
end
