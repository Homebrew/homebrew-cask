cask 'jprofiler' do
  version '10.0.4'
  sha256 'c0280d829b84f1c96bf45eab3b702b9bfb0510528fb4433b7d6b9739d127a70f'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '58961ffc0f5502fb5759e2123780c40126fa91c85d4f189986e4d4f641faa0de'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
