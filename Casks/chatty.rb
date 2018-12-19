cask 'chatty' do
  version '0.9.2'
  sha256 '574ca8b70e101c3e16a60aac16b407a3334b36dac64181a0ff5ebf9f8467fa11'

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
