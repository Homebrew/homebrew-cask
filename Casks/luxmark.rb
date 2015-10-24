cask :v1 => 'luxmark' do
  version '3.1'
  sha256 'eb103ac1bbee170c9fdecb2cd2bc6b70662a0a5f74bcf8e8edf1057d695291c0'

  url "http://www.luxrender.net/release/luxmark/v#{version}/luxmark-macos64-v#{version}.zip"
  name 'LuxMark'
  homepage 'http://www.luxrender.net/wiki/LuxMark'
  license :gpl

  app 'LuxMark.app'
end
