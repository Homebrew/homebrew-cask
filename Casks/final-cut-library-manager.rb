cask 'final-cut-library-manager' do
  version '3.70'
  sha256 'abb3b31a307eacc00807159f01c3e4353ecf22714515f18f443fd072b3fde744'

  url "http://cdn.arcticwhiteness.com/finalcutlibrarymanager/download/zips/FinalCutLibraryManager_#{version}.zip"
  appcast 'https://www.arcticwhiteness.com/finalcutlibrarymanager/download/appcast.xml'
  name 'Arctic Whiteness Final Cut Library Manager'
  name 'FCPX Library Manager'
  homepage 'https://www.arcticwhiteness.com/finalcutlibrarymanager/'

  app 'Final Cut Library Manager.app'
end
