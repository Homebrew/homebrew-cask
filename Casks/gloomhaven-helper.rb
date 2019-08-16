cask 'gloomhaven-helper' do
  version '8.2'
  sha256 '5e0d57719024c004a7df47babf1c7ec8007f9eb8393a0d393dd124dce1ea7b0d'

  url 'https://esotericsoftware.com/files/ghh/GloomhavenHelper.zip'
  name 'Gloomhaven Helper'
  homepage 'https://esotericsoftware.com/gloomhaven-helper#Gloomhaven-Helper'

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
    depends_on_java
  end
end
