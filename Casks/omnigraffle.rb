cask 'omnigraffle' do
  if MacOS.version <= :sierra
    version '7.8.2'
    sha256 'ab463ea6c12d49c4104d3814ac3280d0359072702d4751f5074f644fc79de0c6'
    url "https://downloads.omnigroup.com/software/Archive/MacOSX/10.12/OmniGraffle-#{version}.dmg"
  else
    version '7.10'
    sha256 '6b29a3904f7bb2addcbd28e10f60492a85ab2d75c5077bc96fa11151a3a4c63c'
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniGraffle-#{version}.dmg"
  end

  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniGraffle#{version.major}"
  name 'OmniGraffle'
  homepage 'https://www.omnigroup.com/omnigraffle/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'OmniGraffle.app'

  zap trash: '~/Library/Application Support/The Omni Group/OmniGraffle'
end
