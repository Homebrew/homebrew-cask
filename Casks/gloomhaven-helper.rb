cask 'gloomhaven-helper' do
  version '8.4.3'
  sha256 '33f2dc935688c728fcd60bf093658b16ea5eb97a1a4fb935d82b5d416b24ea39'

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
