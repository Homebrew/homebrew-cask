cask 'cdock' do
  version '0.10.1'
  sha256 'b3e9504303ce97560c131a36795a357b5823d46a1b22e3b3fbea5a10bcf6a99a'

  url "https://github.com/w0lfschild/cDock2/releases/download/v#{version}/release.zip"
  appcast 'https://github.com/w0lfschild/cDock2/releases.atom',
          checkpoint: 'c4ba3d7000a0db21d5dd9486abd3b52047438aa2b3a39b914c9c3edc8c0dbe5c'
  name 'cDock2'
  homepage 'https://w0lfschild.github.io/cdock'
  license :bsd

  depends_on cask: 'easysimbl'
  depends_on macos: '>= :mavericks'

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
