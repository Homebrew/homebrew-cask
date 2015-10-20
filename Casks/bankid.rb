cask :v1 => 'bankid' do
  version :latest
  sha256 :no_check

  url 'https://install.bankid.com/FileDownloader?fileId=Mac'
  name 'BankID'
  homepage 'https://www.bankid.com/'
  license :gratis

  container :type => :naked
  preflight do
    system '/bin/mv', '--', staged_path.join('FileDownloader'), staged_path.join('bankid-latest.pkg')
  end

  pkg 'bankid-latest.pkg'

  uninstall :pkgutil => 'com.bankid.bankid.BankID.pkg'
end
