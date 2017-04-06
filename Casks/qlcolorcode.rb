cask 'qlcolorcode' do
  version '2.0.8'
  sha256 '598da4c881750943687b846a01a72cbaa2a91054db71d34bb4e7c8ffe4be9ac5'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: '0f3ff11b8f32c32869669d669f3386e8a8de60a9a68278130af75a1e68274d67'
  name 'QLColorCode'
  homepage 'https://github.com/anthonygelibert/QLColorCode'

  depends_on formula: 'highlight'

  qlplugin 'QLColorCode.qlgenerator'

  postflight do
    # This sets the path to the highlight binary to the preferred one found in $PATH.
    system 'defaults write org.n8gray.QLColorCode pathHL "$(which highlight)"'
  end

  zap trash: '~/Library/Preferences/org.n8gray.QLColorCode.plist'
end
