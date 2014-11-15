cask :v1 => 'launchy' do
  version '2.5'
  sha256 '9a1112261c7f00d8600c2bf52abc98d5fabf89af56d5881a807b403b7c94e288'

  url "http://www.launchy.net/downloads/mac/Launchy#{version}.dmg"
  homepage 'http://www.launchy.net'
  license :unknown

  app 'Launchy.app'
end
