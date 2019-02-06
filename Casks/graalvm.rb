cask 'graalvm' do
  version '1.0.0-RC12'
  sha256 'e626d1b88796e6c5bfd8d616a87a5bf9cd611754a27f7da5ac259175b6148f54'

  # github.com/oracle/graal was verified as official when first introduced to the cask
  url "https://github.com/oracle/graal/releases/download/vm-#{version.downcase}/graalvm-ce-#{version.downcase}-macos-amd64.tar.gz"
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
