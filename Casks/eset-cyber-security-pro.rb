cask 'eset-cyber-security-pro' do
  version :latest
  sha256 :no_check

  url 'https://download.eset.com/com/eset/apps/home/ess/mac/latest/eset_cybersecurity_pro_en.dmg'
  name 'ESET Cyber Security Pro'
  homepage 'https://www.eset.com/us/home/cyber-security-pro/'

  pkg 'Resources/Installer.pkg'

  uninstall script: {
                      executable: "#{staged_path}/Resources/Uninstaller.app/Contents/Scripts/uninstall.sh",
                      sudo:       true,
                    }
end
