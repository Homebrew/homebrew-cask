cask 'chatty' do
  version '0.8.7'
  sha256 '7c0759fc6a07c0137766f2c9715589c5f25294475ef9c99812ed935b973d26fb'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: '7c3a3fcdc7587ff38c8fab9634a8fee70cf80afe830a4870d9a83ca06e2e1454'
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
