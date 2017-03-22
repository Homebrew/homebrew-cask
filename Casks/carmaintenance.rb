cask 'carmaintenance' do
  version '1.8.22'
  sha256 'df6cad8772ca8edcc18c721489b3e2c0c4aa0a61bb18acd443d621b76b6393aa'

  url "http://www.traxxsoftware.com/downloads/CarMaintenance_#{version.dots_to_underscores}.zip"
  appcast 'http://www.traxxsoftware.com/download.html',
          checkpoint: '99f9ae58fc6a4a6c4cf95f38f7531aa947b00aa21fb08ce6215f170b2232e13a'
  name 'CarMaintenance'
  homepage 'http://www.traxxsoftware.com/download.html'

  depends_on macos: '>= :mavericks'

  app "CarMaintenance_#{version.dots_to_underscores}/CarMaintenance.app"
end
