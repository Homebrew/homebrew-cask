cask 'filemaker-pro-advanced' do
  version '18.0.3.317'
  sha256 '4eba410556271b6a60eaed58450e2539b10281698ba854c96ab10c564040eda0'

  url "https://fmdl.filemaker.com/esd/fmpa_#{version}.dmg"
  appcast 'https://www.filemaker.com/redirects/ss.txt'
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
