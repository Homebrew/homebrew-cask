cask 'p4v' do
  version '18.3-1719707'
  sha256 'ea6dd0739d068c9a140c8802ad366aae9c27687d44f225e0cae180373eddca28'

  url "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/P4V.dmg"
  appcast "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/SHA256SUMS"
  name 'Perforce Visual Client'
  name 'P4Merge'
  name 'P4V'
  homepage 'https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v'

  app 'p4v.app'
  app 'p4admin.app'
  app 'p4merge.app'
  binary 'p4vc'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  p4_wrapper = "#{staged_path}/p4.wrapper.sh"
  binary p4_wrapper, target: 'p4v'
  binary p4_wrapper, target: 'p4admin'
  binary p4_wrapper, target: 'p4merge'

  preflight do
    IO.write p4_wrapper, <<~EOS
      #!/bin/bash
      set -euo pipefail
      COMMAND=$(basename "$0")
      exec "#{appdir}/${COMMAND}.app/Contents/MacOS/${COMMAND}" $@ 2> /dev/null
    EOS
  end

  zap trash: [
               '~/Library/Preferences/com.perforce.p4v',
               '~/Library/Preferences/com.perforce.p4v.plist',
               '~/Library/Saved Application State/com.perforce.p4v.savedState',
             ]
end
