cask :v1 => 'feedbinnotifier' do
  version '1.0.4'
  sha256 '20f94b5cecc2b730da1cfaae3633ce41f7b6ef6b28f56b7684538394544515f8'

  url "https://github.com/kmikael/FeedbinNotifier/releases/download/v#{version}/FeedbinNotifier.zip"
  homepage 'http://kmikael.github.io/FeedbinNotifier'
  license :oss

  app 'FeedbinNotifier.app'
end
