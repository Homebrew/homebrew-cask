cask :v1 => 'imitone' do
  version '0.6.0'
  sha256 '20b262c59d770de364a6ebc4c6e8e38a25a9fcdd691345b4acb4041ce25e397f'

  url "http://imitone.com/beta/imitone-#{version}.dmg"
  homepage 'http://imitone.com/'
  license :unknown

  app 'imitone.app'
end
