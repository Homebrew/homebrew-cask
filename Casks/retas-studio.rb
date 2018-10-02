cask 'retas-studio' do
  version '1.8.2'
  sha256 '55069bfd6ece3bacde37db2eef4fe37c013e0d6f3aed026e3894ed197fa392a2'

  # clip-studio.net was verified as official when first introduced to the cask
  url "http://vd.clipstudio.net/clipcontent/paint/app/182/CSP_#{version.no_dots}m_app.pkg"
  name 'CLIP STUDIO PAINT'
  homepage 'http://www.clip-studio.com/clip_site/clipstudiopaint/'

  pkg 'CSP_#{version.no_dots}m_app.pkg'
  
  uninstall pkgutil: [
                       'jp.co.CELSYS.ClipStudioPaint.Support.100.pkg',
                       'jp.co.CELSYS.ClipStudioPaint.150.pkg',
                       'jp.co.CELSYS.ClipStudioPaint.Common.160.pkg',
                       'jp.co.CELSYS.CertMdul.150.pkg',
                       'jp.co.CELSYS.AggregateMdul.150.pkg',
                       'jp.co.CELSYS.ClipStudio.150.pkg',
                     ]  
end
