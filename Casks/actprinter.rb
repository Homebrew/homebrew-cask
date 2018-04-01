cask 'actprinter' do
  version '3.2.4'
  sha256 'c770888630b05faa53f3e3746765264b70a792d65077865f70101be0098b0835'

  # actprinter.com was verified as official when first introduced to the cask
  url "http://www.actprinter.com/mac/ACTPrinter%20for%20Mac%20#{version}.zip"
  appcast 'https://www.houdah.com/ACTPrinter/releaseNotes.html',
          checkpoint: 'b12e36299478a13dc633c97b76993055ba630a1b17b0bdf33850cd7e7fc4bc7b'
  name 'ACTPrinter'
  homepage 'https://www.houdah.com/ACTPrinter/'

  app 'ACTPrinter Mac.app'
end
