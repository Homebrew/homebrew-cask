cask 'sqleditor' do
  version '3.2.2'
  sha256 '114e1df1fc6e96a5eb7932a3127543c970aeefbe248a3cf4eb2f1ad7139e96de'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          checkpoint: 'd3f41bedfdb1ef7c2bf85d8b04f33aaf7ac8ac34a84452cd84c685662e7de8c3'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'

  app 'SQLEditor.app'
end
