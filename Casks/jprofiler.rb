cask 'jprofiler' do
  version '10.0.3'
  sha256 '63fa19c9c3df13f8005ee2e33d5f8042c75bd798286ade3388c5b7bed1218df4'

  url "https://download-keycdn.ej-technologies.com/jprofiler/jprofiler_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://feeds.ej-technologies.com/jprofiler',
          checkpoint: '69de61f5f1564ce763a559ecd054eb91e51aaa4598e5873bb0ea5dbe8d82e9e9'
  name 'JProfiler'
  homepage 'https://www.ej-technologies.com/products/jprofiler/overview.html'

  app 'JProfiler.app'
end
