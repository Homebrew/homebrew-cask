cask "kdiff3" do
  # note: "3" is not a version number, but an intrinsic part of the product name
  version "1.8.3"
  sha256 "b6ad193fb01392f6dd05b99989c86c578054d97961753b97a20855453e33708a"

  url "https://download.kde.org/stable/kdiff3/kdiff3-#{version}-macos-64.dmg"
  appcast "https://invent.kde.org/sdk/kdiff3/-/tags?format=atom"
  name "KDiff3"
  homepage "https://invent.kde.org/sdk/kdiff3"

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
