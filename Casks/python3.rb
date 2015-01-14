cask :v1 => 'python3' do
  # note: "3" is a trailing version number on the Cask token, which
  # breaks our own token conventions, for consistency with Homebrew
  version '3.4.2'
  sha256 '5a4edfac31efd4ecd2efb4cb7203c0c36e488f1d0a20755b674b04dcb3c21e1b'

  url "https://www.python.org/ftp/python/#{version}/python-#{version}-macosx10.6.pkg"
  homepage 'http://www.python.org/'
  license :oss

  pkg "python-#{version}-macosx10.6.pkg"

  uninstall :pkgutil => [
                        "org.python.Python.PythonApplications-#{version.slice(/\d+\.\d+/)}",
                        "org.python.Python.PythonDocumentation-#{version.slice(/\d+\.\d+/)}",
                        "org.python.Python.PythonFramework-#{version.slice(/\d+\.\d+/)}",
                        "org.python.Python.PythonUnixTools-#{version.slice(/\d+\.\d+/)}",
                        ],
            :delete => [
                       "/Library/Receipts/PythonInstallPip-#{version.slice(/\d+\.\d+/)}",
                       "/Applications/Python #{version.slice(/\d+\.\d+/)}",
                       "/Library/Frameworks/Python.Framework/Versions/#{version.slice(/\d+\.\d+/)}",
                       "/Library/Python/#{version.slice(/\d+\.\d+/)}",
                       ]
  zap :delete => "~/Library/Python/#{version.slice(/\d+\.\d+/)}"
end
