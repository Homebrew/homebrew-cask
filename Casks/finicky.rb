cask 'finicky' do
  version '3.0.0'
  sha256 '4cc8d684a0d43787a759679a646a3769e848f80212b7c6dfb4305fa3fd541249'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end
