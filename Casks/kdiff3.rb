cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.9.3"
  sha256 "502e7631364aa1eda7ed3caed634137e5d848255b5147f46a5c615956dfb4a79"

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-64.dmg"
  name "KDiff3"
  desc "Utility for comparing and merging files and directories"
  homepage "https://invent.kde.org/sdk/kdiff3"

  livecheck do
    url "https://download.kde.org/stable/kdiff3/"
    regex(/href=["']?kdiff3[._-]?v?(\d+(?:\.\d+)+)[._-]?macos[._-]?64\.dmg/i)
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
