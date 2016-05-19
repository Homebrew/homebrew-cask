cask 'jansi' do
  version '10.4'
  sha256 '7e2e3b1979f87f0aa50ff37f8ff8d1d0f62ef3771d5308bdd160e6c5d57a17b2'

  # dl.dropbox.com/u/43721500 was verified as official when first introduced to the cask
  url "http://dl.dropbox.com/u/43721500/JANSI-MacOSX#{version}.zip"
  name 'Japanese ANSI'
  name 'JANSI'
  homepage 'http://kenie33-jansi.blogspot.jp/'
  license :unknown

  depends_on macos: '>= :tiger'

  artifact "JANSI-MacOSX#{version}/JANSI.icns", target: "#{ENV['HOME']}/Library/Keyboard Layouts/JANSI.icns"
  artifact "JANSI-MacOSX#{version}/JANSI.keylayout", target: "#{ENV['HOME']}/Library/Keyboard Layouts/JANSI.keylayout"
end
