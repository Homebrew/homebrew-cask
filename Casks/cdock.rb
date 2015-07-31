cask :v1 => 'cdock' do
  version '9.1.2'
  sha256 '6c5822702136ca49c9a68607ed2a9bbab0f117a12bf8c0fd0f9f4f94306667bf'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => '2c140343ccc8bbc4f6c183b61981b0476cdd95614c5e08b2adb1a826a5a04acf'
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
