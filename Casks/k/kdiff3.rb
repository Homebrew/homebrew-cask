cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x86_64"

  version "1.12.4"
  sha256 arm:   "80d0a1e3de9382b52df7d67e0c0b6b1998aa7e79213d3147e46e094027bd3d15",
         intel: "b11849a191173bb75a2884d94e6d175135e432579222d718b05a98b91fcd5619"

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-#{arch}.dmg"
  name "KDiff3"
  desc "Utility for comparing and merging files and directories"
  homepage "https://invent.kde.org/sdk/kdiff3"

  livecheck do
    url "https://download.kde.org/stable/kdiff3/"
    regex(/href=["']?kdiff3[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :ventura"

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
