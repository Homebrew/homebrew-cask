cask 'qlcolorcode' do
  version '2.0.9'
  sha256 '2b373ea51148f43a0b7e7feafcf2a5422692d7a03e787afdd3692ec4341bf33f'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: '59313b59f78db19be800a35d199cc98729d9bf2650f14606a21ec517451ce745'
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
