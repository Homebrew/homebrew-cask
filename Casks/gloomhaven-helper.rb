cask 'gloomhaven-helper' do
  version '8.3.1'
  sha256 'c937fa37bdbe72e65c780aefb9c3de741a16140f26b701c2d8a192bd8196dcce'

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
