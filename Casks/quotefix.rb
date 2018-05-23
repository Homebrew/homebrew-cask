cask 'quotefix' do
  version '2.9.0'
  sha256 'a5c0b0156715965ca8d8d2e5c9ed7c85185daa16cb8c19632b1fc797d287ab96'

  url "https://github.com/robertklep/quotefixformac/releases/download/v#{version}/QuoteFix-v#{version}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom',
          checkpoint: '2032640f65df0f65ef785d52e5074ab8122e807841e91f29bd9d1841f7ff63dd'
  name 'QuoteFix'
  homepage 'https://github.com/robertklep/quotefixformac'

  stage_only true

  postflight do
    system_command '/usr/bin/defaults', args: ['write', 'com.apple.mail', 'EnableBundles', '-bool', 'true']
    system_command '/usr/bin/defaults', args: ['write', 'com.apple.mail', 'BundleCompatibilityVersion', '-string', '3']
    system_command '/bin/mkdir', args: ['-p', File.expand_path('~/Library/Mail/Bundles')]
    system_command '/bin/cp', args: ['-r', File.join(staged_path, 'QuoteFix.mailbundle'), File.expand_path('~/Library/Mail/Bundles')]
  end

  uninstall delete: File.expand_path('~/Library/Mail/Bundles/QuoteFix.mailbundle')

  caveats <<~EOS
    You may need to restart Mail.app before you can use QuoteFix
  EOS
end
