cask :v1 => 'prott' do
  version :latest
  sha256 :no_check

  url "https://prottapp.com/app/gadgets/prott.dmg"
  homepage 'http://prottapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Prott.app'
end
