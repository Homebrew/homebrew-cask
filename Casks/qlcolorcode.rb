cask 'qlcolorcode' do
  version '2.0.8'
  sha256 '598da4c881750943687b846a01a72cbaa2a91054db71d34bb4e7c8ffe4be9ac5'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: '8292b9376d20a419a53be5e87c18da0560c7f5c302a2d47e64d76879b883be1d'
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
