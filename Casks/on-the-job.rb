cask 'on-the-job' do
  version '3.0.9'
  sha256 '08ef2e932ec200f65376b401a9311f8cd5fc1548ef462ebb2963232ac8dceec4'

  # stunt.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://stunt.s3.amazonaws.com/onthejob_#{version}.zip"
  appcast 'https://stuntsoftware.com/onthejob/',
          checkpoint: '3e587991755623c8de6120bd07dae57209c6a3405044e8b90609f25d8505b471'
  name 'On The Job'
  homepage 'https://stuntsoftware.com/onthejob/'

  app 'On The Job.app'
end
