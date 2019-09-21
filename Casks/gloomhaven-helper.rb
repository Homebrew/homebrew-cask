cask 'gloomhaven-helper' do
  version '8.3.0'
  sha256 '9a55cddd73ef854a6eb9f68b6faea543cf1347b40507ba7d6ae4a5a3c55e1044'

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
    depends_on_java
  end
end
