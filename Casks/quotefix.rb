cask 'quotefix' do
  version '2.7.4,120155'
  sha256 'eb2a80431c0c53547e811bef7bcb9256184abd8415c31787aa4bd0fda3b4a242'

  url "https://github.com/robertklep/quotefixformac/files/#{version.after_comma}/QuoteFix-#{version.before_comma}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom',
          checkpoint: '0e2e2db147a03e4697a5138374ec61ba4182ce45e33cc3fb3d93b7242ac9a9b7'
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
