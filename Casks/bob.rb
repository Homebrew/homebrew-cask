cask 'bob' do
  version '0.3.0'
  sha256 'e03d3dd667192e46b3b36c15dcfee1908cf2cc619a789cbdc4e075af9980bfc3'

  url "https://github.com/ripperhe/Bob/releases/download/v#{version}/Bob.app.zip"
  appcast 'https://github.com/ripperhe/Bob/releases.atom'
  name 'Bob'
  homepage 'https://github.com/ripperhe/Bob'

  depends_on macos: '>= :sierra'

  app 'Bob.app'

  zap trash: [
               '~/Library/Preferences/com.ripperhe.Bob.plist',
               '~/Library/Caches/com.ripperhe.Bob',
             ]
end
