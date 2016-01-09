cask 'quotefix' do
  version '2.7.3'
  sha256 '5382def466d6350bb060dd19eb11f7d9cf90ba37ffac7284a1f574771c6de45f'

  url "https://github.com/robertklep/quotefixformac/releases/download/v#{version}/QuoteFix-v#{version}.zip"
  appcast 'https://github.com/robertklep/quotefixformac/releases.atom',
          :sha256 => '041d7df6ebdd0b61f92f6c58c55aeade4894d9f8f0e2ff92e05da4b676f8fb1d'
  name 'QuoteFix'
  homepage 'https://github.com/robertklep/quotefixformac'
  license :oss

  stage_only true

  postflight do
    system 'defaults', 'write', 'com.apple.mail', 'EnableBundles', '-bool', 'true'
    system 'defaults', 'write', 'com.apple.mail', 'BundleCompatibilityVersion', '-string', '3'
    system 'mkdir', '-p', File.expand_path('~/Library/Mail/Bundles')
    system 'cp', '-r', File.join(staged_path, 'QuoteFix.mailbundle'), File.expand_path('~/Library/Mail/Bundles')
  end

  uninstall :delete => File.expand_path('~/Library/Mail/Bundles/QuoteFix.mailbundle')

  caveats 'You may need to restart Mail.app before you can use QuoteFix'
end
