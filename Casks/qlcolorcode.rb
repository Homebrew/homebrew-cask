cask 'qlcolorcode' do
  version '2.0.6'
  sha256 '194c6e27ded07258af945daa3e3347a0b0628ae98cf6d203e509083726ccf58a'

  url "https://github.com/anthonygelibert/QLColorCode/releases/download/release-#{version}/QLColorCode.qlgenerator.zip"
  appcast 'https://github.com/anthonygelibert/QLColorCode/releases.atom',
          checkpoint: 'de01b6e253ec929a50c21e36414d29e7d33dd5c90a5416e2a414745902399bc8'
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
