cask :v1 => 'macgdbp' do
  version '1.5'
  sha256 '90697835c77c0a294cea7aec62276fbf6920763968e5c77a0791199c7d718744'

  url "https://www.bluestatic.org/downloads/macgdbp/macgdbp-#{version}.zip"
  appcast 'https://www.bluestatic.org/versioncast.php/macgdbp',
          :sha256 => '5c1c3548e8e993df1bd38d0d0c5149e8e4312566da858bbfdbbe83ca93793048'
  homepage 'https://www.bluestatic.org/software/macgdbp/'
  license :unknown

  app 'MacGDBp.app'
end
