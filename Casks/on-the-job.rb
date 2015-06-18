cask :v1 => 'on-the-job' do
  version :latest
  sha256 :no_check

  url 'http://stuntsoftware.com/downloads/OnTheJob.zip'
  name 'On The Job'
  appcast 'http://stuntsoftware.com/PHP/sparkle/onthejob.php',
          :sha256 => 'dc68765c1d326ba50aeda9af4ed46c208c6c0b9a85379eb71be0ba3a92887bd0'
  homepage 'http://stuntsoftware.com/onthejob/'
  license :commercial

  app 'On The Job.app'
end
