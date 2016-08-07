cask 'royal-tsx' do
  version '2.2.4.1000'
  sha256 '1efd0a5e6605f451f913c02595967e2dc08ad86b1b394e794c1ac81361ac2f7f'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '0451af62eb020e454e2b920e6f8aaa6e2883f9b990d68e44e31539765d8a3ea8'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
