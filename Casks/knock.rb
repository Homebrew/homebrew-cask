cask :v1 => 'knock' do
  version :latest
  sha256 :no_check

  url 'http://knocktounlock.com/download'
  homepage 'http://knocktounlock.com'
  license :unknown

  app 'Knock.app'
end
