cask :v1 => 'icons' do
  version '1.0'
  sha256 '1c9fc20d8b10677c11f70d43e511227209d83f260bfbef6fddf00a7469e8f8c1'

  url "https://github.com/exherb/icons/releases/download/#{version}/icons-v#{version}-macos-x64.zip"
  homepage 'https://github.com/exherb/icons'
  license :oss

  app 'Icons.app'
end
