cask 'qlcolorcode-extra' do
  version :latest
  sha256 :no_check

  url 'https://github.com/BrianGilbert/QLColorCode-extra/archive/master.zip'
  name 'QLColorCode-extra'
  homepage 'https://github.com/BrianGilbert/QLColorCode-extra/'
  license :oss

  depends_on formula: 'highlight'

  qlplugin 'QLColorCode-extra-master/QLColorCode.qlgenerator'

  postflight do
    # This sets the path to the highlight binary to the preferred one found in $PATH.
    system 'defaults write org.n8gray.QLColorCode pathHL "$(which highlight)"'
  end

  zap trash: '~/Library/Preferences/org.n8gray.QLColorCode.plist'
end
