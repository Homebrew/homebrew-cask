cask 'mars' do
  version '4.5,Aug2014'
  sha256 'ac340b676ba2b62246b9df77e62f81ad4447bcfd329ab539716bcd09950b7096'

  url "https://courses.missouristate.edu/KenVollmar/mars/MARS_#{version.before_comma.dots_to_underscores}_#{version.after_comma}/Mars#{version.before_comma.dots_to_underscores}.jar"
  appcast 'https://courses.missouristate.edu/KenVollmar/mars/Help/MarsHelpHistory.html',
          checkpoint: '70ce3d91a35154b5e9a12ff552be743420074361d49d3a7e5676dc9686c87971'
  name 'MIPS Assembler and Runtime Simulator'
  name 'MARS'
  homepage 'https://courses.missouristate.edu/KenVollmar/mars/index.htm'

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/mars.wrapper.sh"
  binary shimscript, target: 'mars'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java "${@}" -jar 'Mars#{version.before_comma.dots_to_underscores}.jar'
    EOS
  end

  caveats do
    depends_on_java
  end
end
