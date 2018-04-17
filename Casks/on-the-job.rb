cask 'on-the-job' do
  version '3.0.9'
  sha256 '08ef2e932ec200f65376b401a9311f8cd5fc1548ef462ebb2963232ac8dceec4'

  # stunt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://stunt.s3.amazonaws.com/onthejob_#{version}.zip"
  appcast 'https://stuntsoftware.com/onthejob/',
          checkpoint: 'd5484f706bf70812fc7f6091244e71c4f5e326d8d978b2363a6af75e5272088b'
  name 'On The Job'
  homepage 'https://stuntsoftware.com/onthejob/'

  app 'On The Job.app'
end
