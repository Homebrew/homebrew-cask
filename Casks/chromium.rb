cask 'chromium' do
  version '767701'
  sha256 'e9fa13df4bd14df2fd820a60ee8166e55727611393b49d8df503e753c85551ca'

  # commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/ was verified as official when first introduced to the cask
  url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip"
  appcast 'https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media'
  name 'Chromium'
  homepage 'https://www.chromium.org/Home'

  conflicts_with cask: [
                         'eloston-chromium',
                         'freesmug-chromium',
                       ]

  app 'chrome-mac/Chromium.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/chromium.wrapper.sh"
  binary shimscript, target: 'chromium'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Chromium.app/Contents/MacOS/Chromium' "$@"
    EOS
  end

  zap trash: [
               '~/Library/Application Support/Chromium',
               '~/Library/Caches/Chromium',
               '~/Library/Preferences/org.chromium.Chromium.plist',
               '~/Library/Saved Application State/org.chromium.Chromium.savedState',
             ]
end
