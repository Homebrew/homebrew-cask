cask :v1 => 'cdock' do
  version '9.4'
  sha256 'c3d63e956e4ef420d2b5fbfd380fdabc510b881d226a96e30660ee7147a603d2'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => '32ab3e2cd941fb22ce05a21f7efdad7c9322a28a4f8c58fe9a3ad061e9641a4c'
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
