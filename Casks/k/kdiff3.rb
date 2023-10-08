cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.10.6"
  sha256 "273da6944b9a5222ac61eee2b463ced58b731eb38e27fb1de78a092c53a6a7f5"

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-x86_64.dmg"
  name "KDiff3"
  desc "Utility for comparing and merging files and directories"
  homepage "https://invent.kde.org/sdk/kdiff3"

  livecheck do
    url "https://download.kde.org/stable/kdiff3/"
    regex(/href=["']?kdiff3[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]x86_64\.dmg/i)
  end

  app "kdiff3.app"
  shimscript = "#{staged_path}/kdiff3.wrapper.sh"
  binary shimscript, target: "kdiff3"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/kdiff3.app/Contents/MacOS/kdiff3' "$@"
    EOS
  end

  zap trash: "~/.kdiff3rc"
end
