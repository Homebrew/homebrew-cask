cask :v1 => 'cdock' do
  version '9.5'
  sha256 'db92068d04b538bf1fb20f7b5d79151ce619befefb20929178a143a73f4e99cc'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => '9a2877e8cf8c466b2dbf5e3e063f27b663c91b54bb2c108548d52fb18fabc010'
  name 'cDock'
  homepage 'http://w0lfschild.github.io/pages/cdock.html'
  license :bsd

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'
end
