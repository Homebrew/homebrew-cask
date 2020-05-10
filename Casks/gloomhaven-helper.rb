cask 'gloomhaven-helper' do
  version '8.3.6'
  sha256 'f49fbbd1b230da0c7be001efda41c573f588a0e866f6bdb941f28d7f89757f93'

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
