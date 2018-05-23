cask 'chatty' do
  version '0.9.1'
  sha256 '50d4e1c05d32e15bf0147cbeee26e54f9bc56d4084ed060482f60f6499fe81ff'

  # github.com/chatty/chatty was verified as official when first introduced to the cask
  url "https://github.com/chatty/chatty/releases/download/v#{version}/Chatty_#{version}.zip"
  appcast 'https://github.com/chatty/chatty/releases.atom',
          checkpoint: 'd15defdb7b11d3500b6ebf6bdc372beb545d7655f03dc8dcfa566155fa3a5d00'
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
