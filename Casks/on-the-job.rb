cask :v1 => 'on-the-job' do
  version :latest
  sha256 :no_check

  url 'http://stuntsoftware.com/downloads/OnTheJob.zip'
  homepage 'http://stuntsoftware.com/onthejob/'
  license :commercial

  app 'On The Job.app'
end
