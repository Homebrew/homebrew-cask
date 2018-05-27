cask 'logisim-evolution' do
  version '2.14.4'
  sha256 '3ca55caac762ca63d928e52f0f92013fb2a14d8d7031e378ef187c5969aef4f9'

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/logisim-evolution.jar"
  appcast 'https://github.com/reds-heig/logisim-evolution/releases.atom',
          checkpoint: 'aeb0794bb6739ecb8d8189a34f87f4bb437d083085926cf051947d7032027776'
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
