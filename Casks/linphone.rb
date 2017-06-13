cask 'linphone' do
  version '3.11.1'
  sha256 'a370868decf8a713ec74695ac2018e2337eb9779465da4ce0bf44a5049197d62'

  url "https://www.linphone.org/releases/macosx/linphone-#{version}.pkg"
  appcast 'https://github.com/BelledonneCommunications/linphone/releases.atom',
          checkpoint: '6fa381c755bbdeaf0af15ab18881fe84e117e9fb372d3c6ac23533ec1db3287e'
  name 'Linphone'
  homepage 'https://www.linphone.org/'

  pkg "linphone-#{version}.pkg"

  uninstall pkgutil: 'org.linphone.linphone'
end
