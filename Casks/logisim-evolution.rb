cask 'logisim-evolution' do
  version '2.14.2'
  sha256 '9c1c766d9ebc92ec6444a7ae79c68c5676a61a4ddd2e7d329f468694d32ad164'

  url "https://github.com/reds-heig/logisim-evolution/releases/download/v#{version}/logisim-evolution.jar"
  appcast 'https://github.com/reds-heig/logisim-evolution/releases.atom',
          checkpoint: '98c5c4c9e67ef35fd77bbf4d7df6d178f0148df1950094d72c9470ee1f9eadf0'
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
