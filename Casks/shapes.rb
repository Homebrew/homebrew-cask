cask 'shapes' do
  version '4.8.6'
  sha256 '6f564eb69816b9797343df20aef0ca25a37eccd76f5c9ea628de52d98fa0aa54'

  url "http://shapesapp.com/dist/Shapes_#{version}.zip"
  appcast "http://shapesapp.com/appcast/shapes#{version.major}.rss",
          checkpoint: 'c238879abdb3074b30c7c5be76ca74101750bee44db649be22ea87f0897e20c0'
  name 'Shapes'
  homepage 'http://shapesapp.com/'

  depends_on macos: '>= :mountain_lion'

  app 'Shapes.app'
end
