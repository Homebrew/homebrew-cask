cask "p4v" do
  version "2021.4,2221352"
  sha256 "bb90a378db6c51b77a35f95fea06c5843f7ab172c38d2bd65b075964dd4533d7"

  url "https://cdist2.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015x86_64/P4V.dmg"
  name "Perforce Helix Visual Client"
  name "P4Merge"
  name "P4V"
  desc "Visual client for Helix Core"
  homepage "https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v"

  livecheck do
    url "https://www.perforce.com/perforce/doc.current/user/p4vnotes.txt"
    strategy :page_match do |page|
      page.scan(%r{Supporting\s+Libraries\s+for\s+v?(\d+\.\d+)(?:\.\d+)*/(\d+)}i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

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
    File.write p4_wrapper, <<~EOS
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
