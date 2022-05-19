cask "p4v" do
  version "2022.1,2286077"
  sha256 "f695a3e11c3b3386b891512a96f407d9f9b0ab280f6c365b2dbfc26019816b52"

  url "https://cdist2.perforce.com/perforce/r#{version.major[-2..]}.#{version.minor}/bin.macosx1015x86_64/P4V.dmg"
  name "Perforce Helix Visual Client"
  name "P4Merge"
  name "P4V"
  desc "Visual client for Helix Core"
  homepage "https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v"

  livecheck do
    url "https://www.perforce.com/support/software-release-index"
    regex(%r{(?:Patch|Release) for[^<]+?Helix Visual Client[^<]+?v?(\d+(?:\.\d+)+)/(\d+)}im)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
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
