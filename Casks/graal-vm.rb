cask 'graal-vm' do
  version '1.0.0,rc10'
  sha256 'c3165bdccd1b7404488ce478160c1058cb4fbaf5f96f42ead7e33c298913ebf0'

  # github.com/oracle/graal was verified as official when first introduced to the cask
  url "https://github.com/oracle/graal/releases/download/vm-#{version.before_comma}-#{version.after_comma}/graalvm-ce-#{version.before_comma}-#{version.after_comma}-macos-amd64.tar.gz"
  appcast 'https://github.com/oracle/graal/releases.atom'
  name 'GraalVM'
  homepage 'https://www.graalvm.org/'

  postflight do
    system_command '/bin/mv',
                   args: [
                           '-f', '--',
                           "#{staged_path}/graalvm-ce-#{version.before_comma}-#{version.after_comma}",
                           "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}"
                         ],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: [
                           '-nsf', '--',
                           "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}/Contents/Home/lib/server/libjvm.dylib",
                           "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}/Contents/Home/bundle/Libraries/libserver.dylib"
                         ],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}"

  caveats <<~EOS
    To use GraalVM 'java' binary (and other binaries that come with it),
    you must add the ${NCARG_ROOT}/bin directory
    to your PATH environment variable.

    For bash shell, add these lines to ~/.bash_profile:

      export PATH=/Library/Java/JavaVirtualMachines/graalvm-ce-#{version.before_comma}/Contents/Home/bin:$PATH

    For other information, please see:
    https://www.graalvm.org/docs/getting-started/#install-graalvm
  EOS
end
