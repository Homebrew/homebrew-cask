cask 'omnioutliner' do
  version '5.0.3'
  sha256 'e0d9e543b457efc059eba9875729ddd9196cd1c9edfc1092118ce38a0e2c4c0d'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: '1d608a6b2dbbabbcfdbe92ddfbfc4ac531a5a4b9d8cdef0862dbda406784a8b0'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end
