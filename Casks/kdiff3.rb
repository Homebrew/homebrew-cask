cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.10.5"
  sha256 "dd48669a53d8f6b4f305819cd9b0a1a36f1eff3d8d571c51415f9fe511700502"

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
