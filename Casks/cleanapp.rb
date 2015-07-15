cask :v1 => 'cleanapp' do

  homepage 'http://www.syniumsoftware.com/cleanapp'

  license :commercial

  tags :vendor => 'Synium Software'
  
  app 'CleanApp.app'

  name 'CleanApp'


  if MacOS.release >= '10.4' && MacOS.release < '10.6'
    version '3.4.12'
    depends_on :macos => ['10.4', '10.5', '10.6', '10.7']
    url "http://download.syniumsoftware.com/CleanApp/CleanApp%203.4.12.dmg"
    sha256 'e6020a82949a55ae1eb5b7e45f736bc8b51c7d5e94503f0e4a88b5f8940ab269'
  elsif MacOS.release >= '10.6' && MacOS.release < '10.8'
    version '4.0.8'
    depends_on :macos => ['10.6', '10.7', '10.8', '10.9', '10.10']
    url "http://download.syniumsoftware.com/CleanApp/CleanApp%204.0.8.dmg"
    sha256 'e77359586731e1ae863351846afc9fd34a7b9774625122001c0d92593a340ff1'
  else
    version :latest
    depends_on :macos => '>= 10.8'
    url "http://www.syniumsoftware.com/download/cleanapp.dmg"
    sha256 :no_check
  end

end
