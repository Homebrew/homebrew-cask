cask 'graalvm' do
  version '19.1.1'
  sha256 '85711322866ddacda88d3a592c76520188b3d7c40b6c39cd9943856e72eb6c72'

  # github.com/oracle/graal was verified as official when first introduced to the cask
  url "https://github.com/oracle/graal/releases/download/vm-#{version.downcase}/graalvm-ce-darwin-amd64-#{version.downcase}.tar.gz"
  appcast 'https://github.com/oracle/graal/releases.atom'
  name 'GraalVM Community Edition'
  homepage 'https://www.graalvm.org/'

  postflight do
    system_command '/bin/mv',
                   args: [
                           '-f', '--',
                           "#{staged_path}/graalvm-ce-#{version.downcase}",
                           "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.downcase}"
                         ],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.downcase}"
end
