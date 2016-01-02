cask 'cdock' do
  version '0.9.10'
  sha256 '92e231a8d16117acd1687c169dff19caecc9cdeaa5997dd65b5de8ea3007b527'

  url "https://github.com/w0lfschild/cDock2/releases/download/v#{version}/cDock.zip"
  appcast 'https://github.com/w0lfschild/cDock2/releases.atom',
          :sha256 => '14a8f05bfc3b3b6ad7c068700ffef35f4c25f8554c7ddeb4114c4f894c61ee5c'
  name 'cDock2'
  name 'cDock'
  homepage 'https://w0lfschild.github.io/cdock'
  license :bsd

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'
end
