cask 'supermicro-ipmiview' do
  version '2.15.0,190109'
  sha256 '3314341589b22cf00792bc66ed309605d43eff708a1d09de7a4517d3852e5545'

  filename = "IPMIView_#{version.before_comma}_build.#{version.after_comma}_bundleJRE_Linux_x64"

  url "ftp://ftp.supermicro.com/utility/IPMIView/Linux/#{filename}.tar.gz"
  name 'Supermicro IPMIView'
  homepage 'https://www.supermicro.com/en/solutions/management-software/ipmi-utilities'

  depends_on cask: 'java'

  app_contents = "#{appdir}/Supermicro IPMIView.app/Contents"
  app_macos = "#{app_contents}/MacOS"
  app_resources = "#{app_contents}/Resources"
  shimscript = "#{app_macos}/Supermicro IPMIView"

  preflight do
    # Setup app directory
    system_command '/bin/mkdir', args: ['-p', "#{app_macos}", "#{app_resources}"]
    system_command '/bin/cp', args: ['-r', "#{staged_path}/#{filename}/", "#{app_resources}"]
    # Generate shimscript
    system_command '/usr/bin/touch', args: ["#{shimscript}"]
    IO.write shimscript, <<~EOS
      #!/bin/sh
      DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
      cd "${DIR}/../Resources"
      java -jar IPMIView20.jar
    EOS
    system_command '/bin/chmod', args: ['a+x', "#{shimscript}"]
  end

  uninstall delete: "#{appdir}/Supermicro IPMIView.app"
end
