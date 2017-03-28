cask 'carmaintenance' do
  version '1.8.22'
  sha256 'df6cad8772ca8edcc18c721489b3e2c0c4aa0a61bb18acd443d621b76b6393aa'

  url "http://www.traxxsoftware.com/downloads/CarMaintenance_#{version.dots_to_underscores}.zip"
  appcast 'http://www.traxxsoftware.com/download.html',
          checkpoint: 'e3d3a83c1bb9b237edce0adbb970e03d996d0712e45a5cfd1f545ada3149b82c'
  name 'CarMaintenance'
  homepage 'http://www.traxxsoftware.com/download.html'

  depends_on macos: '>= :mavericks'

  app "CarMaintenance_#{version.dots_to_underscores}/CarMaintenance.app"
end
