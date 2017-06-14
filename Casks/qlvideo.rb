cask 'qlvideo' do
  version '1.89'
  sha256 '8febaf7f8e410e3603afe1d5a46d86f299c822ee5682d988daaaebadc2b1585d'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLVideo/releases.atom',
          checkpoint: '22b0c48eaac6add0ccdeae83db485fe004585235a76617979ce856647c52fcfc'
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil: 'uk.org.marginal.qlvideo'
end
