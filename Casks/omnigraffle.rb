cask 'omnigraffle' do
  if MacOS.version <= :sierra
    version '7.8.2'
    sha256 'ab463ea6c12d49c4104d3814ac3280d0359072702d4751f5074f644fc79de0c6'
    url "https://downloads.omnigroup.com/software/Archive/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  elsif MacOS.version <= :high_sierra
    version '7.11.5'
    sha256 '83ef24af2dbd7977b9922e992f17f23e102562f0589d28bc37d5579b4a4d4938'
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniGraffle-#{version}.dmg"
  else
    version '7.13'
    sha256 'db60eacc5bfb7ac64f12391948639ad1784354ebf95a4198b9c84fecf54158ac'
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniGraffle-#{version}.dmg"
  end

  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniGraffle#{version.major}"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
