cask 'findings' do
  version '1.4.4,3564'
  sha256 '849c044139a6d35105020585169c01d9fd401f73dd44202cce4d1fe4fb0b2bed'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: 'bf207aa3146fc647734c166404988d483638d95421de3cbddbba11c1712b523c'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
