class Bankid < Cask
  version 'latest'
  sha256 :no_check

  url 'https://install.bankid.com/FileDownloader?fileId=Mac'
  homepage 'http://www.bankid.com/'

  container_type :naked
  before_install do
    system '/bin/mv', '--', destination_path.join('FileDownloader'), destination_path.join('bankid-latest.pkg')
  end

  install 'bankid-latest.pkg'
  uninstall :pkgutil => 'com.bankid.bankid.BankID.pkg'
end
