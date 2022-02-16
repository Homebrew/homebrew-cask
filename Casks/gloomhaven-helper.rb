cask "gloomhaven-helper" do
  version "8.4.12"
  sha256 "bcad969cadeeb35c5fec96567021065eebfba44bed93c3f240721633d570e890"

  url "https://esotericsoftware.com/files/ghh/GloomhavenHelper-#{version}.zip"
  name "Gloomhaven Helper"
  desc "Officially licensed companion application for playing the Gloomhaven board game"
  homepage "https://esotericsoftware.com/gloomhaven-helper"

  livecheck do
    url "https://esotericsoftware.com/gloomhaven-helper"
    regex(%r{href=.*?/GloomhavenHelper-(\d+(?:\.\d+)+)\.zip}i)
  end

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/GloomhavenHelper/gloomhaven-helper.wrapper.sh"
  binary shimscript, target: "gloomhaven-helper"

  preflight do
    File.write shimscript, <<~EOS
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
