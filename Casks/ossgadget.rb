cask "ossgadget" do
  version "0.1.312"
  sha256 "713fa9d4e12b7321664187bed9f6df8e0201c008aaf570fbebf3eb9b181343e7"

  url "https://github.com/microsoft/OSSGadget/releases/download/v#{version}/OSSGadget_macos_#{version}.tar.gz"
  name "OSSGadget"
  desc "Collection of tools for analyzing open source packages."
  homepage "https://github.com/microsoft/OSSGadget"

  livecheck do
    url "https://github.com/microsoft/OSSGadget"
    strategy :github_latest
  end

  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-characteristic"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-defog"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-detect-backdoor"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-detect-cryptography"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-diff"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-download"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-find-domain-squats"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-find-source"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-find-squats"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-health"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-metadata"
  binary "#{staged_path}/OSSGadget_macos_#{version}/oss-risk-calculator"

  caveats <<~EOS
    If you see "\"xxx\" can't be opened because it is from an unidentified developer",
    see https://docs.brew.sh/FAQ#why-cant-i-open-a-mac-app-from-an-unidentified-developer.
    the solution is to install the app with:

      brew install --cask --no-quarantine #{token}

    WARNING: quarantining is a macOS security feature and you disable it at your own risk!
  EOS
end
