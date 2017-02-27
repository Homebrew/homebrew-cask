cask 'findings' do
  version '1.4.4.3564'
  sha256 '55d94404139b7c0c3e303d208aba47b4f20bffcfef4cdcfc4535c55fbe2e021c'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast 'http://downloads.findingsapp.com/appcast.xml',
          checkpoint: 'bf207aa3146fc647734c166404988d483638d95421de3cbddbba11c1712b523c'
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :mavericks'

  app 'Findings.app'
end
