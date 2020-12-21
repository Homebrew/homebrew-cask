cask "gloomhaven-helper" do
  version "8.4.8"
  sha256 "b35bf9d5ac7acea2437bb1cafb6516ce9d4988fc8f06077cd0323bd3e666ab21"

  url "https://esotericsoftware.com/files/ghh/GloomhavenHelper-#{version}.zip"
  appcast "https://esotericsoftware.com/gloomhaven-helper"
  name "Gloomhaven Helper"
  homepage "https://esotericsoftware.com/gloomhaven-helper"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/GloomhavenHelper/gloomhaven-helper.wrapper.sh"
  binary shimscript, target: "gloomhaven-helper"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java "${@}" -XstartOnFirstThread -jar 'ghh.jar'
    EOS
  end

  zap trash: [
    "~/.ghh",
    "~/.prefs/ghh",
  ]

  caveats do
    depends_on_java "8+"
  end
end
