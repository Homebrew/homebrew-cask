cask :v1 => 'cloudytabs' do
  version '1.4'
  sha256 '7ba67b0f7415fe2d2cb545866eb0e9c7c2bea8980445921a9da5d2bf55711d76'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'
  license :mit

  app 'CloudyTabs.app'
end
