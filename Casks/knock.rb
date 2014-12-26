cask :v1 => 'knock' do
  version :latest
  sha256 :no_check

  url 'http://knocktounlock.com/download'
  homepage 'http://knocktounlock.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'
end
