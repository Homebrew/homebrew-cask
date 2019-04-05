cask 'filemaker-pro-advanced' do
  version '17.0.4.400'
  sha256 '5798776d580a7b551c5ef77c5732d57cb8589afc211857f111f458a0678c134b'

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
