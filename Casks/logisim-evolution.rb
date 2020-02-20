cask 'logisim-evolution' do
  version '2.15.0'
  sha256 '2d56d01a692e26dd2e5c19a6139ed66d9352fb4bc2c81171b2153b9099cfd91d'

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/logisim-evolution.jar"
  appcast 'https://github.com/reds-heig/logisim-evolution/releases.atom'
  name 'Logisim Evolution'
  homepage 'https://github.com/reds-heig/logisim-evolution'

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
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
