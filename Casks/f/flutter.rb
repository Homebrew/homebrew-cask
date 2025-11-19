cask "flutter" do
  version "3.38.1"
  sha256 :no_check

  url "https://github.com/flutter/flutter.git",
      branch:   "stable",
      verified: "github.com/flutter/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web, and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://github.com/flutter/flutter.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true

  binary "bin/flutter"
  binary "bin/dart"
  artifact ".", target: "#{HOMEBREW_PREFIX}/share/flutter"

  postflight do
    system_command "#{HOMEBREW_PREFIX}/share/flutter/bin/flutter",
                   args:         ["precache"],
                   print_stdout: true
  end

  zap trash: "~/.flutter"
end
