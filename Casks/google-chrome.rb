cask :v1 => 'google-chrome' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg'
  homepage 'https://www.google.com/chrome/'
  license :unknown
  tags :vendor => 'Google'

  app 'Google Chrome.app'

  zap :delete => [
                  '~/Library/Application Support/Google/Chrome',
                  '~/Library/Caches/Google/Chrome',
                  '~/Library/Caches/com.google.Chrome',
                  '~/Library/Caches/com.google.Chrome.helper.EH',
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
    The Mac App Store version of 1Password won't work with a Homebrew-Cask-linked Google Chrome. To bypass this limitation, you need to either:

      + Move Google Chrome to your /Applications directory (the app itself, not a symlink).
      + Install 1Password from outside the Mac App Store (licenses should transfer automatically, but you should contact AgileBits about it).
  EOS
end
