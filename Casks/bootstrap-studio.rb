cask 'bootstrap-studio' do
  version '4'
  sha256 '6ab5693d91ae745d34c647247fd22cb5fd6069585e80b64245bf8ca05efbc535'

  url "https://bootstrapstudio.io/releases/desktop/#{version}/Bootstrap%20Studio%20#{version}.zip"
  name 'Bootstrap Studio'
  homepage 'https://bootstrapstudio.io/'

  app 'Bootstrap Studio.app'
end
