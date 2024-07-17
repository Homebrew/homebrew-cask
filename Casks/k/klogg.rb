cask "klogg" do
  version "22.06.0.1289"
  sha256 "e5df7722d0d851852dd9cc3449dd42d1fef3e74edda8c20dc04b38cb852b0fec"

  url "https://github.com/variar/klogg/releases/download/v#{version.major_minor}/klogg-#{version}-OSX-Qt5.dmg"
  name "Klogg"
  desc "Fast, advanced log explorer"
  homepage "https://github.com/variar/klogg"

  livecheck do
    url :url
    regex(/^klogg[._-]v?(\d+(?:\.\d+)+)-OSX-Qt5\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
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

  zap trash: [
    "~/Library/Application Support/klogg",
    "~/Library/Preferences/com.klogg.klogg.plist",
    "~/Library/Preferences/com.klogg.klogg_session.plist",
    "~/Library/Saved Application State/com.github.variar.klogg.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
