cask 'logisim-evolution' do
  version '2.14.6'
  sha256 'b4e3605379c7353fd2ac9a2cd7426ca5d4baed9a619d0b46ef0cee90fc8ae467'

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
