cask "p4v" do
  version "20.2,2028073"
  sha256 "860baf3635aa49c7bd2fd3d1e562bc36d84afc65af9f08537ebd4b0afbe9930e"

  url "https://cdist2.perforce.com/perforce/r#{version.before_comma}/bin.macosx1015x86_64/P4V.dmg"
  appcast "https://www.perforce.com/perforce/doc.current/user/p4vnotes.txt"
  name "Perforce Visual Client"
  name "P4Merge"
  name "P4V"
  homepage "https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v"

  app "p4v.app"
  app "p4admin.app"
  app "p4merge.app"
  binary "p4vc"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  p4_wrapper = "#{staged_path}/p4.wrapper.sh"
  binary p4_wrapper, target: "p4v"
  binary p4_wrapper, target: "p4admin"
  binary p4_wrapper, target: "p4merge"

  preflight do
    IO.write p4_wrapper, <<~EOS
      #!/bin/bash
      set -euo pipefail
      COMMAND=$(basename "$0")
      if [[ "$COMMAND" == "p4merge" ]]; then
        exec "#{appdir}/${COMMAND}.app/Contents/Resources/launch${COMMAND}" "$@" 2> /dev/null
      else
        exec "#{appdir}/${COMMAND}.app/Contents/MacOS/${COMMAND}" "$@" 2> /dev/null
      fi
    EOS
  end

  zap trash: [
    "~/Library/Preferences/com.perforce.p4v",
    "~/Library/Preferences/com.perforce.p4v.plist",
    "~/Library/Saved Application State/com.perforce.p4v.savedState",
  ]
end
