cask 'sqleditor' do
  version '2.9.12'
  sha256 'b0243086f656ceea8f7fe4183d719f77feadaffefcd26790aee6f1a670836a23'

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.gsub('.', '-')}.zip"
  appcast 'https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml',
          :sha256 => '8cef64947c2783453e63e9ccefb8d5131db0ebe2a298ff376c8ae40d57f2e617'
  name 'SQLEditor'
  homepage 'https://www.malcolmhardie.com/sqleditor/'
  license :commercial

  app 'SQLEditor.app'
end
