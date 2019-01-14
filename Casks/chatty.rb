cask 'chatty' do
  version '0.9.4'
  sha256 '5172ff7cf7bf37e3c78b9a01f57782152649038d44d5e632695ccd87ca61154f'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom'
  name 'Chatty'
  homepage 'https://chatty.github.io/'

  suite 'Chatty'

  preflight do
    # There is no sub-folder in the ZIP; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('Chatty').tap(&:mkpath))
  end

  zap trash: '~/.chatty'

  caveats do
    depends_on_java '7+'
  end
end
