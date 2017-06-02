cask 'chatty' do
  version '0.8.6'
  sha256 'cb3f1081186f67b843d8a8290a8926bd3518f542fd37696ef6fe4769328cfddd'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: 'b2a3370c0693df1c5f0ec5750d99a7c9ac82256283aafe29714f81bf9dcd0782'
  name 'Chatty'
  homepage 'https://chatty.github.io/'

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
