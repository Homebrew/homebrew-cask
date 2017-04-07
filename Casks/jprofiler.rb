cask 'jprofiler' do
  version '10.0.1'
  sha256 '29b05dba86539593df97234afc4e1c1f91061164dbd78ae91d7133e567b8dfac'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: 'ae69c3b96d219020d98efb9453feb09e58f44682ccc870e475589d7cc4e77f29'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
