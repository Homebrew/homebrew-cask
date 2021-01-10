cask "gloomhaven-helper" do
  version "8.4.8"
  sha256 "b35bf9d5ac7acea2437bb1cafb6516ce9d4988fc8f06077cd0323bd3e666ab21"

  url "https://esotericsoftware.com/files/ghh/GloomhavenHelper-#{version}.zip"
  name "Gloomhaven Helper"
  desc "Officially licensed companion application for playing the Gloomhaven board game"
  homepage "https://esotericsoftware.com/gloomhaven-helper"

  livecheck do
    url "https://esotericsoftware.com/gloomhaven-helper"
    strategy :page_match
    regex(%r{href=.*?/GloomhavenHelper-(\d+(?:\.\d+)*)\.zip}i)
  end

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
