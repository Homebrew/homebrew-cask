cask 'p4v' do
  version '19.1-1797168'
  sha256 'e1fcdfd0fed279826f881ee1e951131cef91f2839a3d23ef9a11312c3b085e50'

  url "https://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/P4V.dmg"
  appcast 'https://cdist2.perforce.com/perforce/'
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
      exec "#{appdir}/${COMMAND}.app/Contents/MacOS/${COMMAND}" "$@" 2> /dev/null
    EOS
  end

  zap trash: [
               '~/Library/Preferences/com.perforce.p4v',
               '~/Library/Preferences/com.perforce.p4v.plist',
               '~/Library/Saved Application State/com.perforce.p4v.savedState',
             ]
end
