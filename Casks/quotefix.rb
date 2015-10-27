cask :v1 => 'quotefix' do
  version '2.7.0'
  sha256 'f3623c6356bc951958cc12808de39a6ba70139f5da3b78ea62277bb11d94f003'

  url "https://github.com/robertklep/quotefixformac/releases/download/v#{version}/QuoteFix-v#{version}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom'
  name 'QuoteFix'
  homepage 'https://github.com/robertklep/quotefixformac'
  license :oss

  stage_only true

  postflight do
    system 'defaults', 'write', 'com.apple.mail', 'EnableBundles', '-bool', 'true'
    system 'defaults', 'write', 'com.apple.mail', 'BundleCompatibilityVersion', '-string', '3'
    system 'mkdir', '-p',  File.expand_path('~/Library/Mail/Bundles')
    system 'cp', '-r',  File.join(staged_path, 'QuoteFix.mailbundle'), File.expand_path('~/Library/Mail/Bundles')
  end

  uninstall :delete => File.expand_path('~/Library/Mail/Bundles/QuoteFix.mailbundle')

  caveats 'You may need to restart Mail.app before you can use QuoteFix'
end
