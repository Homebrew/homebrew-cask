cask 'findings' do
  version '2.0.6,5438'
  sha256 '3a13090d64ef2887615fe54bfb6c4f6970d218ab9fb1edee04f869e5529c05e5'

  url "http://downloads.findingsapp.com/Findings_#{version.after_comma}_#{version.before_comma}.zip"
  appcast "https://s3.amazonaws.com/downloads.findingsapp.com/appcastv#{version.major}.xml"
  name 'Findings'
  homepage 'http://findingsapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Findings.app'
end
