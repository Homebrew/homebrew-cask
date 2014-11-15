cask :v1 => 'prott' do
  version :latest
  sha256 :no_check

  url "https://prottapp.com/app/gadgets/prott.dmg"
  homepage 'http://prottapp.com/'
  license :unknown

  app 'Prott.app'
end
