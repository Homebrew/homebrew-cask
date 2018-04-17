cask 'pixel-check' do
  version '1.3'
  sha256 '99da44c4538463c6476be2f7d6584a4e5a9bfa175895d72e5baf1f3271316b02'

  url "http://macguitar.me/apps/pixelcheck/PXC#{version}.zip"
  appcast 'http://macguitar.me/apps/pixelcheck/',
          checkpoint: 'e977f7053f5edd3a089b8bebfc4dc536b33e73f799ad113efac40666b900e385'
  name 'PiXel Check'
  homepage 'http://macguitar.me/apps/pixelcheck/'

  app "PiXel Check #{version}/PiXel Check.app"
end
