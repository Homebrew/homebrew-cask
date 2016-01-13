cask 'actotracker' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/ActoTracker.zip'
  appcast 'https://onflapp.appspot.com/actotracker',
<<<<<<< dce37e173006c7c99e24e54a431485a09808a3e0
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
=======
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
>>>>>>> change all appcast casks to use :checkpoint
  name 'ActoTracker'
  homepage 'https://onflapp.wordpress.com/actotracker/'
  license :gratis

  app 'ActoTracker.app'
end
