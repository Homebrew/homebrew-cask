cask 'chatty' do
  version '0.8.4.1'
  sha256 'd241200802ec8a755cad4b6707c1ed39343ac82d4070b5a4656423386344ceb0'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: 'ef6d8bab49e52d165104d7ac747e326240c7d069165bf2f4226ea4f9a1da8701'
  name 'Chatty'
  homepage 'https://chatty.github.io'

  suite 'Chatty'

  preflight do
    # There is no sub-folder in the ZIP; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('Chatty').tap(&:mkpath))
  end

  zap delete: '~/.chatty'

  caveats do
    depends_on_java('7+')
  end
end
