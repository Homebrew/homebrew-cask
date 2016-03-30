cask 'optimal-layout' do
  version '2.3.2'
  sha256 '7e79da53af0b8060f69427f8e79c8e6bdf6933065f3d0b0c93886c5da2adea19'

  # windowflow.com is the official download host per the vendor homepage
  url "http://files.windowflow.com/OptimalLayout#{version.major}.zip"
  appcast 'http://most-advantageous.com/sparkle/OL-AppCast.cfm',
          checkpoint: 'bbf6cb478fcf1a1afd2598dfe560373f8395dc5da8cc96ac7ef2843b0519bdb9'
  name 'Optimal Layout'
  homepage 'http://most-advantageous.com/optimal-layout/'
  license :commercial

  app 'Optimal Layout.app'
end
