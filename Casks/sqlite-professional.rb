cask :v1 => 'sqlite-professional' do
  version '1.0.39'
  sha256 '1df9746a6d936fb98d3f095973f9a65ef74494a8a9a2925ba49e9cc8e400afda'

  url "https://www.sqlitepro.com/versions/SQLitePro#{version}.zip"
  homepage 'https://www.sqlitepro.com'
  license :unknown

  app 'SQLite Professional.app'
end
