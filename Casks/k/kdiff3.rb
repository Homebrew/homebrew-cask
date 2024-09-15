cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.11.4"
    sha256 "8e40be16e78489d5e7cc600109bd1d6c31540454263e0969953cc3cb163d3fea"
  end
  on_intel do
    version "1.11.4"
    sha256 "10ed955e4002fe3f9cf9efd2890d43ec90c61b6d533d6ae91a6b5df107aeec99"
  end

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-#{arch}.dmg"
  name "KDiff3"
  desc "Utility for comparing and merging files and directories"
  homepage "https://invent.kde.org/sdk/kdiff3"

  livecheck do
    url "https://download.kde.org/stable/kdiff3/"
    regex(/href=["']?kdiff3[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "kdiff3.app"
  shimscript = "#{staged_path}/kdiff3.wrapper.sh"
  binary shimscript, target: "kdiff3"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/kdiff3.app/Contents/MacOS/kdiff3' "$@"
    EOS
  end

  zap trash: [
    "~/.kdiff3rc",
    "~/Library/Application Support/kdiff3",
    "~/Library/Preferences/kdiff3rc",
  ]
end
