cask 'chromium' do
  version :latest
  sha256 :no_check

  # download-chromium.appspot.com was verified as official when first introduced to the cask
  url 'https://download-chromium.appspot.com/dl/Mac?type=snapshots'
  name 'Chromium'
  homepage 'https://www.chromium.org/Home'

  app 'chrome-mac/Chromium.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/chromium.wrapper.sh"
  binary shimscript, target: 'chromium'

  preflight do
    IO.write shimscript, <<-EOS.undent
      #!/bin/bash
      '#{appdir}/Chromium.app/Contents/MacOS/Chromium "$@"
    EOS
  end

  zap delete: [
                '~/Library/Preferences/org.chromium.Chromium.plist',
                '~/Library/Caches/Chromium',
                '~/Library/Application Support/Chromium',
                '~/Library/Saved Application State/org.chromium.Chromium.savedState',
              ]
end
