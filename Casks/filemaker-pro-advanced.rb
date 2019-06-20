cask 'filemaker-pro-advanced' do
  version '18.0.1.122'
  sha256 'a0393932aafa2b02afc71ef53fa4a34496bdef6d50d6fc8ea0d8e68ca25e3e60'

  url "https://fmdl.filemaker.com/esd/fmpa_#{version}.dmg"
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
