class GoogleChromeCanary < Cask
  version :latest
  sha256 :no_check

  url 'https://storage.googleapis.com/chrome-canary/GoogleChromeCanary.dmg'
  homepage 'https://www.google.com.br/chrome/browser/canary.html'
  license :unknown
  tags :vendor => 'Google'

  app 'Google Chrome Canary.app'

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
end