cask 'quotefix' do
  version '2.8.2'
  sha256 '907b655e352ac4179824d353083b78f0d4977be61a89c3f32e5a9cf472730ee6'

  url "https://github.com/robertklep/quotefixformac/releases/download/v#{version}/QuoteFix-v#{version}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom',
          checkpoint: 'a42249d7f3b22bf2985aadf881b52e226c24913811b5127e945be036278262e0'
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

  caveats 'You may need to restart Mail.app before you can use QuoteFix'
end
