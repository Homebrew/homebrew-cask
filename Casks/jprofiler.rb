cask 'jprofiler' do
  version '10.1'
  sha256 '45329d4c06ebcc2d04049744b919ab22e0bf0e4bf9b977934f9e9e3784532d60'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '58961ffc0f5502fb5759e2123780c40126fa91c85d4f189986e4d4f641faa0de'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
