cask 'royal-tsx' do
  version '2.2.2.1000'
  sha256 '45466ecd1dcf8613bd079338991c4942411ea1a50a4acee4c62b9d51d65c4675'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast 'http://v2.royaltsx.com/updates_beta.php',
          checkpoint: '30b5e24546e809df460f2186e66875be3cfcaf54cd6d57f2f1d7540ac472d3ae'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
