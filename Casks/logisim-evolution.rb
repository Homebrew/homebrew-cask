cask 'logisim-evolution' do
  version '2.13.22'
  sha256 '45869c7d8731dcf2e14fb0e2decbea192d2b8e123a3ce5d5bc2a5bd692a37741'

  url "https://github.com/reds-heig/logisim-evolution/releases/download/#{version}/logisim-evolution.jar"
  appcast 'https://github.com/reds-heig/logisim-evolution/releases.atom',
          checkpoint: 'b915fd66db058c04675fe3555a70464fd4c1999bded3c5f1b745baa12a78cfce'
  name 'Logisim Evolution'
  homepage 'https://github.com/reds-heig/logisim-evolution'

  container type: :naked

  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/logisim-evolution.wrapper.sh"
  binary shimscript, target: 'logisim-evolution'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java "${@}" -jar 'logisim-evolution.jar'
    EOS
  end

  zap trash: '~/Library/Preferences/com.cburch.logisim.plist'
end
