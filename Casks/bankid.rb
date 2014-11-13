cask :v1 => 'bankid' do
  version :latest
  sha256 :no_check

  url 'https://install.bankid.com/FileDownloader?fileId=Mac'
  homepage 'http://www.bankid.com/'
  license :unknown

  container :type => :naked
  preflight do
    system '/bin/mv', '--', staged_path.join('FileDownloader'), destination_path.join('bankid-latest.pkg')
  end

  pkg 'bankid-latest.pkg'
  uninstall :pkgutil => 'com.bankid.bankid.BankID.pkg'
end
