cask 'filemaker-pro-advanced' do
  version '17.0.2.205'
  sha256 '68956a994f95f3b184a41492bce223dc2c7407a71376554f546d1e8d71340f01'

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
