cask 'gloomhaven-helper' do
  version '8.4.5'
  sha256 '77620d66c7e5afd18f2ff9049e00a637dfa791cae2865093778125e4e8248279'

  url "https://esotericsoftware.com/files/ghh/GloomhavenHelper-#{version}.zip"
  name 'Gloomhaven Helper'
  homepage 'https://esotericsoftware.com/gloomhaven-helper'

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/GloomhavenHelper/gloomhaven-helper.wrapper.sh"
  binary shimscript, target: 'gloomhaven-helper'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java "${@}" -XstartOnFirstThread -jar 'ghh.jar'
    EOS
  end

  caveats do
    depends_on_java '8+'
  end
end
