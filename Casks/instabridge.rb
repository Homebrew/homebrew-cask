cask :v1 => 'instabridge' do
  version '1.2.1'
  sha256 '7f316d42b649eb8d5dcde590540de4c135554026144577c680214b4e082b0a50'

  url "http://cdn.instabridge.com/mac/Instabridge-#{version}.zip"
  name 'Instabridge'
  appcast 'http://cdn.instabridge.com/mac/updates.xml',
          :sha256 => '9974b9ea1d1701dd12aa42235de7bf2b4b2f1966c92e435ec92eae53e241c058'
  homepage 'http://instabridge.com/'
  license :gratis

  app 'Instabridge.app'
end
