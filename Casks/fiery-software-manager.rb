cask :v1 => 'fiery-software-manager' do
  version :latest
  sha256 :no_check

  url 'https://d1umxs9ckzarso.cloudfront.net/Products/FSM/Fiery-Software-Manager.dmg'
  homepage 'http://w3.efi.com/Fiery/Products/CWS5/Download/thank-you'
  license :unknown

  installer :manual => 'Fiery Software Manager.app'
end
