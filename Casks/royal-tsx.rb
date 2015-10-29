cask :v1 => 'royal-tsx' do
  version '2.2.0.1000'
  sha256 'e547054b6ce818d1429701804069d0aec7c5e494f9b757e2068093bb6ca4c9a2'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          :sha256 => '326f26d7c0d628d5fbccfdb4986593a5da5288b26d71bbfa7e504747cb08d309'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
