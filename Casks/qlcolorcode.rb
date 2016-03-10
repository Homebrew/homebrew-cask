cask 'qlcolorcode' do
  version '2.0.4'
  sha256 '4b0906b947cb591de9a838281dd989381fc6ab03168d640609444bb2aaacb186'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: 'be821ec87728189576598a4af79982b43a541ba0238302017827d6a7d2b2516f'
  name 'QLColorCode'
  homepage 'https://github.com/anthonygelibert/QLColorCode'
  license :oss

  depends_on formula: 'highlight'

  qlplugin 'QLColorCode.qlgenerator'

  postflight do
    # This sets the path to the highlight binary to the preferred one found in $PATH.
    system 'defaults write org.n8gray.QLColorCode pathHL "$(which highlight)"'
  end

  zap trash: '~/Library/Preferences/org.n8gray.QLColorCode.plist'
end
