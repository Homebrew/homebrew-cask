cask :v1 => 'cdock' do
  version '9.3'
  sha256 '46fa916ac529cb179315f78eae6fe26fc94f073db669add924c49e8f9bbd6c68'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => '7d651fdc840af9c13d546b0ba7bce1e6da86e44b9eaa8bf1d6c5a00809cca58f'
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
