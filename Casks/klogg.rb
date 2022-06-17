cask "klogg" do
  version "22.06.0.1289"
  sha256 "e5df7722d0d851852dd9cc3449dd42d1fef3e74edda8c20dc04b38cb852b0fec"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX-Qt5.dmg"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/klogg-(\d+(?:\.\d+)*)-OSX-Qt5\.dmg}i)
  end

  app "klogg.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/klogg.wrapper.sh"
  binary shimscript, target: "klogg"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/klogg.app/Contents/MacOS/klogg' "$@"
    EOS
  end
end
