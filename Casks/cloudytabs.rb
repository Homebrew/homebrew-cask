cask :v1 => 'cloudytabs' do
  version '1.4'
  sha256 '7ba67b0f7415fe2d2cb545866eb0e9c7c2bea8980445921a9da5d2bf55711d76'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'http://joshparnham.com/projects/cloudytabs/appcast.xml',
          :sha256 => '70140cb26a2a25589d739d6dac6f2e04118a938814909fe08c720b0174adf2b4'
  homepage 'https://github.com/josh-/CloudyTabs/'
  license :oss

  app 'CloudyTabs.app'
end
