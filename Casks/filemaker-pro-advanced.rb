cask 'filemaker-pro-advanced' do
  version '17.0.5.502'
  sha256 '671d6c6b77d403a8c5e6f835ad6a001fda83158aabc686ad6740c935099a6e2b'

  url "https://fmdl.filemaker.com/TBUB/#{version.major}/fmpa_#{version}.dmg"
  name 'FileMaker Pro Advanced'
  homepage 'https://www.filemaker.com/'

  auto_updates true

  pkg "FileMaker Pro #{version.major} Advanced.pkg"

  preflight do
    file = "#{staged_path}/Assisted Install.txt"
    IO.write(file, IO.read(file).sub('AI_LICENSE_ACCEPTED=0', 'AI_LICENSE_ACCEPTED=1'))
  end

  uninstall pkgutil: "com.filemaker.FMPA#{version.major}*"

  caveats do
    license 'https://www.filemaker.com/company/legal/docs/eula/fmpa_eula_wwe.pdf'
  end
end
