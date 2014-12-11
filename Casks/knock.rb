cask :v1 => 'knock' do
  version :latest
  sha256 :no_check

  url 'http://knocktounlock.com/download'
  homepage 'http://knocktounlock.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Knock.app'
end
