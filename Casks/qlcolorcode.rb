cask 'qlcolorcode' do
  version '2.0.7'
  sha256 '363aac10feaa1353a1acb1181659a7e4859084619218a8ec9abc0cfc01c2c85e'

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
