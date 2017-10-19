cask 'omnigraffle' do
  if MacOS.version <= :mavericks
    version '6.0.5'
    sha256 'a2eff19909d1ba38a4f01b2beecbde2f31f4af43d30e06d2c6921ae8880f85bc'
    url "https://downloads.omnigroup.com/software/MacOSX/10.8/OmniGraffle-#{version}.dmg"
  elsif MacOS.version <= :yosemite
    version '6.6.1'
    sha256 '7671d46ccd0b53a5917b0ccba5971fe1f1d7990b2d636f25c941b11b03c6e23c'
    url "https://downloads.omnigroup.com/software/MacOSX/10.10/OmniGraffle-#{version}.dmg"
  else
    version '7.5'
    sha256 'd8d8963a85ee34270d7d0148aaaa7aee75bc7d3fffc1bb89e64626546c943d34'
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniGraffle-#{version}.dmg"
  end

  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
