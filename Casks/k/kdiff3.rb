cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.12.2"
    sha256 "6a5b731b6c15b7dbf76b1fab7fcef21648a1a85eaf6a88742da6de526c73fc6f"
  end
  on_intel do
    version "1.12.2"
    sha256 "077e80de9510da8f0b1b3ed1df2d9eec0059f6c6ad6e7475e48ea9bc9642bf58"
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
