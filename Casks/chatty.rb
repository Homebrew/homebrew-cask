cask 'chatty' do
  version '0.8.5.1'
  sha256 '8959f8395b4f8cf44aa606a57404ca8f8a70d9fbfd8f42962057cc105addc020'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: 'a84090aab24aa2048d8f6098d3e227707ea8376ff77e21f61e7724904b3e6f19'
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
