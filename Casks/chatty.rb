cask 'chatty' do
  version '0.9.7'
  sha256 '3fcf4c6642f3f167f79818e8f9afbe1a927945d5e965fb29163ef371be1dbdd1'

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
