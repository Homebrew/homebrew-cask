cask "gloomhaven-helper" do
  version "8.4.7"
  sha256 "acb4ba170f67adc9b08ca04819c7baaf5147fb9579c08a66686750b2dda24cac"

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
