cask 'macpass' do
  version '0.5.1-alpha'
  sha256 '6d69ce183d5be1031df344b3cf4941a3d9495dc6dedb2d67611bbd89b754427d'

  url "https://github.com/mstarke/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/mstarke/MacPass/releases.atom',
          :sha256 => 'c2ff389bb6f739c21ea10de86bead6a6f8fab317754929388e4ce2d1ed5f91c7'
  name 'MacPass'
  homepage 'https://mstarke.github.io/MacPass/'
  license :gpl

  app 'MacPass.app'
end
