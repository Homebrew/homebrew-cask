cask 'quotefix' do
  version '2.7.4,120155'
  sha256 'eb2a80431c0c53547e811bef7bcb9256184abd8415c31787aa4bd0fda3b4a242'

  url "https://github.com/robertklep/quotefixformac/files/#{version.after_comma}/QuoteFix-#{version.before_comma}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom',
          checkpoint: 'f95a33fb61ed287c57945f5c64258674d372a49411b5b47048dad20a284ca316'
  name 'QuoteFix'
  homepage 'https://github.com/robertklep/quotefixformac'

  stage_only true

  postflight do
    system 'defaults', 'write', 'com.apple.mail', 'EnableBundles', '-bool', 'true'
    system 'defaults', 'write', 'com.apple.mail', 'BundleCompatibilityVersion', '-string', '3'
    system 'mkdir', '-p', File.expand_path('~/Library/Mail/Bundles')
    system 'cp', '-r', File.join(staged_path, 'QuoteFix.mailbundle'), File.expand_path('~/Library/Mail/Bundles')
  end

  uninstall delete: File.expand_path('~/Library/Mail/Bundles/QuoteFix.mailbundle')

  caveats 'You may need to restart Mail.app before you can use QuoteFix'
end
