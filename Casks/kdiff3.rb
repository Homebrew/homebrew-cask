cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.9.0"
  sha256 "c4fb8551c90e25434d79ad73008d6cd70fdb8be32ec702226bb73deea75cd14a"

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-64.dmg"
  name "KDiff3"
  desc "Utility for comparing and merging files and directories"
  homepage "https://invent.kde.org/sdk/kdiff3"

  livecheck do
    url "https://download.kde.org/stable/kdiff3/"
    strategy :page_match
    regex(/href=.*?kdiff3-(\d+(?:\.\d+)*)-macos-64\.dmg/i)
  end

  app "kdiff3.app"
  shimscript = "#{staged_path}/kdiff3.wrapper.sh"
  binary shimscript, target: "kdiff3"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/kdiff3.app/Contents/MacOS/kdiff3' "$@"
    EOS
  end

  zap trash: "~/.kdiff3rc"
end
