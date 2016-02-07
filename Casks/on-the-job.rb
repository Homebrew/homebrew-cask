cask 'on-the-job' do
  version '3.0.9'
  sha256 '08ef2e932ec200f65376b401a9311f8cd5fc1548ef462ebb2963232ac8dceec4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://stunt.s3.amazonaws.com/onthejob_#{version}.zip"
  name 'On The Job'
  homepage 'https://stuntsoftware.com/onthejob/'
  license :commercial

  app 'On The Job.app'
end
