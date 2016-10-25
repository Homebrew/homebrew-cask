cask 'chatty' do
  version '0.8.4'
  sha256 'e9c934b991789066f7fe511bef3a8f907651edf5a557015ee9834a0ba8dbd5d3'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: '29c2520f5b8090050447b322c84e76e75101b2e70ec09edfe77a5c7d7f1aab07'
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
