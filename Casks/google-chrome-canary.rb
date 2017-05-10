cask :v1 => 'google-chrome-canary' do
  version :latest
  sha256 :no_check

  # googleapis.com is the official download host per the vendor homepage
  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  name 'Google Chrome Canary'
  homepage 'https://www.google.com/chrome/browser/canary.html'
  license :gratis
  tags :vendor => 'Google'

  app 'Google Chrome Canary.app'

  zap :delete => [
                  '~/Library/Application Support/Google/Chrome Canary',
                  '~/Library/Caches/Google/Chrome Canary',
                  '~/Library/Caches/com.google.Chrome.canary',
                  '~/Library/Caches/com.google.Keystone.Agent',
                  '~/Library/Caches/com.google.SoftwareUpdate',
                  '~/Library/Google/GoogleSoftwareUpdate',
                  '~/Library/Logs/GoogleSoftwareUpdateAgent.log',
                 ],
      :rmdir  => [
                  '~/Library/Caches/Google',
                  '~/Library/Google',
                 ]

  caveats <<-EOS.undent
    The Mac App Store version of 1Password won't work with a Homebrew-Cask-linked Google Chrome Canary. To bypass this limitation, you need to either:

      + Move Google Chrome Canary to your /Applications directory (the app itself, not a symlink).
      + OR Install 1Password from outside the Mac App Store (licenses should transfer automatically, but you should contact AgileBits about it).
  EOS
end
