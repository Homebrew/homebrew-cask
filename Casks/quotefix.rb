cask 'quotefix' do
  version '2.7.2'
  sha256 'f8431da47b026137d3c43633ce683627e0a390e00ab96638c04869d1ae30d4e9'

  url "https://github.com/robertklep/quotefixformac/releases/download/v#{version}/QuoteFix-v#{version}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom',
          :sha256 => '5aab014aa4bfe79e0cb79be9c40686dd6471b98d21985b2fa9f06f1ca549e816'
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
