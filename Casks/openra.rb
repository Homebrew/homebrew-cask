cask :v1 => 'openra' do
  version '20140722'
  sha256 '0f9bc52de1e4569371ae643d505c66d5196a73537f6810fad2a1c49baad37995'

  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  homepage 'http://www.openra.net/'
  license :oss

  app 'OpenRA.app'
end
