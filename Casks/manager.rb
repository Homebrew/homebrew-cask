cask :v1 => 'manager' do
  version '14.2.35'
  sha256 'aa5f89f9e1323cf0ac44dbfb3287e57615c585a6c747879e24cce7187db46b35'

  url "http://cdn.manager.io/downloads/v#{version}/Manager.dmg"
  homepage 'http://manager.io'
  license :unknown

  app 'Manager.app'
end
