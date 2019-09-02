cask 'gloomhaven-helper' do
  version '8.2'
  sha256 '48d6285bd3a4c7a7d1f3a4cc7e315400cbb3d98ec7b569dcab77a4ccc124585d'

  url 'https://esotericsoftware.com/files/ghh/GloomhavenHelper.zip'
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
    depends_on_java
  end
end
