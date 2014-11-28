cask :v1 => 'gitbox' do
  version '1.6.2'
  sha256 '181ac55515221bf07c9994f25a11e962a9057e4249600b4d95424bcb6bb5c6d7'

  url "https://d1oa71y4zxyi0a.cloudfront.net/gitbox-#{version}-ml.zip"
  appcast 'http://gitboxapp.com/updates.xml',
          :sha256 => '4a771aa4d35cd0bf9f821fbf1e60741cb1d9ee3724ff66550e46fba98bace8c1'
  homepage 'http://gitboxapp.com/'
  license :unknown

  app 'Gitbox.app'

  zap :delete => '~/Library/Preferences/com.oleganza.gitbox.plist'
end
