cask 'jansi' do
  version :latest
  sha256 :no_check

  # dl.dropbox.com/u/43721500 was verified as official when first introduced to the cask
  url 'https://dl.dropbox.com/u/43721500/JANSI-MacOSX10.4.zip'
  name 'Japanese ANSI'
  name 'JANSI'
  homepage 'https://kenie33-jansi.blogspot.jp/'

  depends_on macos: '>= :tiger'

  artifact 'JANSI-MacOSX10.4/JANSI.icns', target: "#{ENV['HOME']}/Library/Keyboard Layouts/JANSI.icns"
  artifact 'JANSI-MacOSX10.4/JANSI.keylayout', target: "#{ENV['HOME']}/Library/Keyboard Layouts/JANSI.keylayout"
end
