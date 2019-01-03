cask 'josm' do
  version '14620'
  sha256 '5f924626f466507480115e6b27e1b1f15ba60fbdc57bf5f8231fb8318e4d875b'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
