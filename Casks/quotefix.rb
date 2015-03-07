cask :v1 => 'quotefix' do
  version '2.5.2'
  sha256 '8d914ae553b84fe5f246ab1eb030d25792ca8d626b3bbac57acee857135e85a9'

  url "https://github.com/robertklep/quotefixformac/releases/download/v#{version}/QuoteFix-v#{version}.zip"
  homepage 'https://github.com/robertklep/quotefixformac'
  license :oss

  artifact 'QuoteFix.mailbundle', :target => Pathname.new(File.expand_path('~')).join('Library/Mail/Bundles/QuoteFix.mailbundle')
  
  postflight do
    system 'defaults', 'write', 'com.apple.mail', 'EnableBundles', '-bool', 'true'
    system 'defaults', 'write', 'com.apple.mail', 'BundleCompatibilityVersion', '-string', '3'
  end

  caveats 'You may need to restart Mail.app before you can use QuoteFix'
end
