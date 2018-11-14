cask 'ibm-data-server-driver-for-odbc-and-cli' do
  version '10.5.0.5'
  sha256 '66875721d96ac39b7ca39540245cc6f6f08b4cf7d0d2e55bf6b8fa1838705b8a'

  url 'https://public.dhe.ibm.com/ibmdl/export/pub/software/data/db2/drivers/odbc_cli/macos64_odbc_cli.tar.gz'
  name 'IBM Data Server Driver for ODBC and CLI'
  homepage 'http://www-01.ibm.com/support/docview.wss?uid=swg21418043'

  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2cli"
  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2diag"
  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2drdat"
  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2dsdcfgfill"
  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2level"
  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2support"
  binary "#{appdir}/IBM Data Server Driver for ODBC and CLI/bin/db2trc"
  artifact 'clidriver', target: "#{appdir}/IBM Data Server Driver for ODBC and CLI"
end
