cask 'pocketcast' do
  version '1.26'
  sha256 '9281179e3f1069470976dc8590e26e4f817142b1641094433e6b5c2806ee7d15'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCast.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom',
          checkpoint: 'eecfbcc95b0d373b4c28aa39c3cd9dd8c9a4cb9f7acba7a8d1f597296b9ca4fd'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'

  app 'PocketCast.app'
end
