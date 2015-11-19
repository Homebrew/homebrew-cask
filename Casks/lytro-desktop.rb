cask :v1 => 'lytro-desktop' do
  version '4.3.2-151113.97'
  sha256 '0646b7515e5bf591c6b75d646a1d98d1f31be949add736b11e7f4c2282487854'

  # amazonaws.com is the official download host per the appcast feed
  url "https://s3.amazonaws.com/lytro-distro/lytro-#{version.sub(%r{.*-},'')}.dmg"
  appcast 'https://pictures.lytro.com/support/software_update',
    :sha256 => 'a24271bb26982429e8e42ff2f3e1ab3d1690192cc2acc2ce36346ed4302e5904'
  name 'Lytro Desktop'
  homepage 'https://www.lytro.com/'
  license :gratis

  app 'Lytro Desktop.app'
end
