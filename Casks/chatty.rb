cask 'chatty' do
  version '0.9'
  sha256 'aa99fd3535c45a4dd3666f872eb7a72744ca57588fd5b78f208e6114308e5079'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: 'da17c44fc050c9f01206824ed87405791a8bf7d86154defa6158ed0072eb0568'
  name 'Chatty'
  homepage 'https://chatty.github.io/'

  suite 'Chatty'

  preflight do
    # There is no sub-folder in the ZIP; the root *is* the folder
    FileUtils.mv(staged_path.children, staged_path.join('Chatty').tap(&:mkpath))
  end

  zap trash: '~/.chatty'

  caveats do
    depends_on_java('7+')
  end
end
