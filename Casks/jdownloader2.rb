cask :v1 => 'jdownloader2' do
  version :latest
  sha256 :no_check

  if MacOS.release >= '10.7'
    url 'http://installer.jdownloader.org/JD2Setup.dmg'
  else
    url 'http://installer.jdownloader.org/JD2Setup_10_6_or_lower.dmg'
  end

  homepage 'http://jdownloader.org/'
  license :unknown

  installer :manual => 'JDownloader Installer.app'
end
