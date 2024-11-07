cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "1.11.5"
    sha256 "ccbafb9468d30afd2e580306882d85caeb356ff2c4c51ef69162f5eea0b21ee8"
  end
  on_intel do
    version "1.11.5"
    sha256 "ca18a5b21a7140197696f1a365a1b6e813bca9f43ccddae19a955626b057bf77"
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
