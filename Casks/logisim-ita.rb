cask 'logisim-ita' do
  version '2.16.1.0'
  sha256 '6b552a520fea30e646e64a8253df43e5a8e8c01ab2ffae271660b1035964dca1'

  url "https://github.com/LogisimIt/Logisim/releases/download/v#{version}/Logisim-ITA.jar"
  appcast 'https://github.com/LogisimIt/Logisim/releases.atom'
  name 'Logisim ITA'
  homepage 'https://github.com/LogisimIt/Logisim'

  container type: :naked

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/logisim-ita.wrapper.sh"
  binary shimscript, target: 'logisim-ita'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      cd "$(dirname "$(readlink -n "${0}")")" && \
        java "${@}" -jar 'Logisim-ITA.jar'
    EOS
  end

  zap trash: '~/Library/Preferences/com.cburch.logisim.plist'
end
