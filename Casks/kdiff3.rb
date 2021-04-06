cask "kdiff3" do
  # NOTE: "3" is not a version number, but an intrinsic part of the product name
  version "1.8.5"
  sha256 "15eedf6d68ccd1be8a77b48b8ed8eb0e6f7f3c8111f1be70907d5bc00013c35f"

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
