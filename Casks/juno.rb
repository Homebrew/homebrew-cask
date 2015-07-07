cask :v1 => 'juno' do
  version '1.0.1'
  sha256 '5cce73948a348277c0ff5ce5faefb7b83e58043c57445f2d117f05c6e142c128'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://junolab.s3.amazonaws.com/release/#{version}/juno-mac-x64.dmg"
  name 'Juno'
  homepage 'http://junolab.org'
  license :gpl

  app 'Juno.app'
end
